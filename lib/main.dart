import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("Ask Me Anything"),
        ),
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  int NumberforChange = 1;
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$NumberforChange.png'),
        onPressed: () {
          setState(() {
            NumberforChange = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
