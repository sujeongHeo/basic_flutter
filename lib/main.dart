import 'package:flutter/material.dart';
//
void main() => runApp(MyApp(
  TextInput: new Text("Provided By Main"),
));

class MyApp extends StatefulWidget {
  MyApp({this.TextInput});
  final Widget TextInput;
  MyAppState createState() => new MyAppState();
}
class MyAppState extends State<MyApp> {
  bool checkBoxValue = false;
  String  actionText = "before change action";
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      title: "MySampleApplication",
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Hello Flutter App"),
            actions: <Widget> [
                new IconButton (
                    icon: new Icon(Icons.add_comment),
                    onPressed: (){
                      setState(() {
                        actionText = "push action Add";
                      });
                    }
                ),
                new IconButton (
                    icon: new Icon(Icons.remove),
                    onPressed: (){
                      setState(() {
                        actionText = "remove, same as default";
                      });
                    }
                ),
              ]
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                widget.TextInput,
                new Text(actionText),
                new Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool newValue){
                      setState(() {
                        checkBoxValue = newValue;
                      });
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}