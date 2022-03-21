import 'dart:async';

import 'package:flutter/services.dart';

//UUID
class FlutterFlappyUuid {

  static const MethodChannel _channel =
      const MethodChannel('flutterflappyuuid');

  //获取UUID
  static Future<String?> getUUID() async {
    final String? version = await _channel.invokeMethod('getUUID');
    return version;
  }

}
