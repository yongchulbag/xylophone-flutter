import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded lineCreate({Color color_select, int buttonNumber}) { // 전달 변수 두개를 {}로 안 감싸면 오류남
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color_select),
        onPressed: () {
          playSound(buttonNumber);
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              lineCreate(color_select : Colors.red, buttonNumber: 1), // 여기에 변수명 지정 안하고 색깔과 숫자만 전달하면 오류남 이유가 멀까?
              lineCreate(color_select : Colors.orange, buttonNumber: 2),
              lineCreate(color_select : Colors.yellow, buttonNumber: 3),
              lineCreate(color_select : Colors.green, buttonNumber: 4),
              lineCreate(color_select : Colors.teal, buttonNumber: 5),
              lineCreate(color_select : Colors.blue, buttonNumber: 6),
              lineCreate(color_select : Colors.purple, buttonNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
