import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home';

  @override
  Widget build(BuildContext context) {
    final teknik = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/unnamed.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Budi Tiawarman',
        style: TextStyle(fontSize: 28.0, color: Colors.black54),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text( 
        'Seorang mahasiswa semester 6 di Universitas Islam Riau, kelahiran Duri, 30 Januari 2000.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.lightGreenAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[teknik, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}