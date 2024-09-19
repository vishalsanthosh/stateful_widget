import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
const HomeScreen ({super.key});
@override
State<HomeScreen> createState()=> _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen>{
  int counter=0;
  void incrementCounter(){
  setState((){
    counter++;
  });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            
            Text('No of Taps'),
            Text("$counter"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        incrementCounter();

      },
      child: Icon(Icons.add),
      ),
    );
  }
}