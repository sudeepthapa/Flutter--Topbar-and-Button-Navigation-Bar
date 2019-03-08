import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    print("Search tapped");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.black87,
        ),
        elevation: 0.9,
        backgroundColor: Colors.greenAccent.shade400,
        title: Text(
          "Fancy AppBar",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
            onPressed: () => debugPrint("Send is Pressed"),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: _onPress,
          )
        ],
      ),

      //Other Properties

      backgroundColor: Colors.lightGreen.shade50,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("sudeptech",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 40, color: Colors.deepOrange)),
            InkWell(
              child: Text("InkWell Button"),
              onTap: () => debugPrint("buttoon tapped"),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: 'Add Something',
        onPressed: ()=>debugPrint("PPressed"),
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School")),
        ],
        onTap: (int i)=>debugPrint('Tapped $i'),
      ),
    );
  }
}
