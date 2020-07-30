
import 'package:collapsing_toolbar/views/sample1/detail/collapsing_profile.dart';
import 'package:flutter/material.dart';

import 'views/sample1/sample1.dart';
import 'views/sample2/sample2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collapsing Toolbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/sample1': (context) => Sample1(),
        '/sample2': (context) => Sample2(),
        '/profile': (context) => CollapsingProfile(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Collapsing Toolbar'),
        centerTitle: true,
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0)),
             child: Text('Sample 1',style: TextStyle(color: Colors.white,fontSize: 16),),
              onPressed: (){
                _handelNavigator('/sample1');
              },
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0)),
              child: Text('Sample 2',style: TextStyle(color: Colors.white,fontSize: 16),),
              onPressed: (){
                _handelNavigator('/sample2');
              },
            ),

          ],
        ),
      ),
    );
  }
  _handelNavigator(String routes){
    Navigator.pushNamed(context, routes);
  }
}
