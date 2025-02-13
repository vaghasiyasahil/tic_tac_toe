//Image UI :-
// https://i.pinimg.com/736x/24/78/8b/24788b528cd0b0d75521a52e55746f6b--illustrator-tutorials-adobe-illustrator.jpg

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class systemTicTacToe extends StatefulWidget {
  const systemTicTacToe({super.key});

  @override
  State<systemTicTacToe> createState() => _systemTicTacToeState();
}

List allColor = [
  Color.fromARGB(255, 147, 152, 156),
  Color.fromARGB(255, 124, 133, 140),
  Color.fromARGB(255, 124, 133, 140),
  Color.fromARGB(255, 179, 187, 190),
  Color.fromARGB(255, 142, 147, 151),
  Color.fromARGB(255, 179, 187, 190),
  Color.fromARGB(255, 142, 147, 151),
  Color.fromARGB(255, 179, 187, 190),
  Color.fromARGB(255, 124, 133, 140),
  Color.fromARGB(255, 179, 187, 190),
  Color.fromARGB(255, 142, 147, 151),
  Color.fromARGB(255, 179, 187, 190),
  Color.fromARGB(255, 142, 147, 151),
  Color.fromARGB(255, 170, 176, 181),
  Color.fromARGB(255, 131, 139, 146),
  Color.fromARGB(255, 160, 168, 174),
  Color.fromARGB(255, 118, 125, 132),
  Color.fromARGB(255, 136, 144, 151),
  Color.fromARGB(255, 155, 162, 169),
  Color.fromARGB(255, 180, 185, 189),
  Color.fromARGB(255, 190, 196, 200),
  Color.fromARGB(255, 112, 120, 128),
  Color.fromARGB(255, 145, 150, 155),
  Color.fromARGB(255, 163, 170, 176),
  Color.fromARGB(255, 177, 182, 186),
];

class _systemTicTacToeState extends State<systemTicTacToe> {
  List btn=["","","","","","","","",""];
  String value="O";
  int oWin=0;
  int xWin=0;
  bool winTemp=true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.black54,
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.only(bottom: 5, right: 3, left: 3, top: 3),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          for (int i = 1; i <= Random().nextInt(100) + 2; i++)
                            allColor
                                .elementAt(Random().nextInt(allColor.length))
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth * 0.03,
                          margin: EdgeInsets.only(
                            left: screenWidth * 0.01,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 3, color: Colors.black54),
                              color: Color.fromARGB(255, 88, 96, 99),
                              shape: BoxShape.circle),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.03,
                          margin: EdgeInsets.only(
                            right: screenWidth * 0.01,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 3, color: Colors.black54),
                              color: Color.fromARGB(255, 88, 96, 99),
                              shape: BoxShape.circle),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    margin:
                        EdgeInsets.only(bottom: 5, right: 3, left: 3, top: 3),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          for (int i = 1; i <= Random().nextInt(100) + 2; i++)
                            allColor
                                .elementAt(Random().nextInt(allColor.length))
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  right: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "PLAYER",
                                    style:
                                        TextStyle(fontSize: screenWidth * 0.04),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.15,
                                  height: screenWidth * 0.15,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          top: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          left: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "X",
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 139, 148, 153),
                                        shadows: [
                                          Shadow(
                                              color: Color.fromARGB(
                                                  255, 139, 148, 153),
                                              offset: Offset(1, 2),
                                              blurRadius: 0)
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "SCORE",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.05,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "$xWin | $oWin",
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.09,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "AI",
                                    style:
                                        TextStyle(fontSize: screenWidth * 0.04),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.15,
                                  height: screenWidth * 0.15,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          top: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          right: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "O",
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.10,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 139, 148, 153),
                                        shadows: [
                                          Shadow(
                                              color: Color.fromARGB(
                                                  255, 139, 148, 153),
                                              offset: Offset(-2, 3),
                                              blurRadius: 0)
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  right: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Container(
                    margin:
                        EdgeInsets.only(bottom: 5, right: 3, left: 3, top: 3),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          for (int i = 1; i <= Random().nextInt(100) + 2; i++)
                            allColor
                                .elementAt(Random().nextInt(allColor.length))
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  right: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  margin: EdgeInsets.only(
                                      bottom: screenWidth * 0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          top: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          left: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(0);
                                    },
                                    child: Text(
                                      "${btn[0]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.10,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                              color: Color.fromARGB(
                                                  255, 112, 120, 135),
                                              offset: Offset(1, 2),
                                              blurRadius: 0,
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  margin: EdgeInsets.only(
                                      bottom: screenWidth * 0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          top: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          bottom: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          left: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(255, 107, 117, 119)))),
                                  // alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(3);
                                    },
                                    child: Text(
                                      "${btn[3]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.09,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                              color: Color.fromARGB(
                                                  255, 139, 148, 153),
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  // margin: EdgeInsets.only(bottom: screenWidth*0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          bottom: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          left: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(6);
                                    },
                                    child: Text(
                                      "${btn[6]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.10,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                                color: Color.fromARGB(
                                                    255, 139, 148, 153),
                                                offset: Offset(1, -2),
                                                blurRadius: 0)
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  margin: EdgeInsets.only(
                                      bottom: screenWidth * 0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          top: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          left: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          right: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(1);
                                    },
                                    child: Text(
                                      "${btn[1]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.10,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                                color: Color.fromARGB(
                                                    255, 112, 120, 135),
                                                offset: Offset(1, 2),
                                                blurRadius: 0)
                                          ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  margin: EdgeInsets.only(
                                      bottom: screenWidth * 0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                        top: BorderSide(
                                            width: screenWidth * 0.02,
                                            color: Color.fromARGB(
                                                255, 107, 117, 119)),
                                        left: BorderSide(
                                            width: screenHeight * 0.01,
                                            color: Color.fromARGB(
                                                255, 107, 117, 119)),
                                        right: BorderSide(
                                            width: screenHeight * 0.01,
                                            color: Color.fromARGB(
                                                255, 107, 117, 119)),
                                        bottom: BorderSide(
                                            width: screenHeight * 0.01,
                                            color: Color.fromARGB(
                                                255, 107, 117, 119)),
                                      )),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(4);
                                    },
                                    child: Text(
                                      "${btn[4]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.09,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                              color: Color.fromARGB(
                                                  255, 139, 148, 153),
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  // margin: EdgeInsets.only(bottom: screenWidth*0.04),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 74, 84, 86),
                                    border: Border(
                                        right: BorderSide(
                                            width: screenWidth * 0.02,
                                            color: Color.fromARGB(
                                                255, 107, 117, 119)),
                                        bottom: BorderSide(
                                            width: screenWidth * 0.02,
                                            color: Color.fromARGB(
                                                255, 107, 117, 119)),
                                        left: BorderSide(
                                            width: screenHeight * 0.01,
                                            color: Color.fromARGB(
                                                255, 107, 117, 119))),
                                  ),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(7);
                                    },
                                    child: Text(
                                      "${btn[7]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.10,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                                color: Color.fromARGB(
                                                    255, 139, 148, 153),
                                                offset: Offset(1, -2),
                                                blurRadius: 0)
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  margin: EdgeInsets.only(
                                      bottom: screenWidth * 0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          right: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          top: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(2);
                                    },
                                    child: Text(
                                      "${btn[2]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.10,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                                color: Color.fromARGB(
                                                    255, 112, 120, 135),
                                                offset: Offset(1, 2),
                                                blurRadius: 0)
                                          ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  margin: EdgeInsets.only(
                                      bottom: screenWidth * 0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          top: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          right: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          bottom: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(5);
                                    },
                                    child: Text(
                                      "${btn[5]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.09,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                              color: Color.fromARGB(
                                                  255, 139, 148, 153),
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.22,
                                  height: screenWidth * 0.18,
                                  // margin: EdgeInsets.only(bottom: screenWidth*0.04),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 74, 84, 86),
                                      border: Border(
                                          bottom: BorderSide(
                                              width: screenWidth * 0.02,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)),
                                          right: BorderSide(
                                              width: screenHeight * 0.01,
                                              color: Color.fromARGB(
                                                  255, 107, 117, 119)))),
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: (){
                                      playGame(8);
                                    },
                                    child: Text(
                                      "${btn[8]}",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.10,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 139, 148, 153),
                                          shadows: [
                                            Shadow(
                                                color: Color.fromARGB(
                                                    255, 139, 148, 153),
                                                offset: Offset(1, -2),
                                                blurRadius: 0)
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  right: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    margin:
                        EdgeInsets.only(bottom: 5, right: 3, left: 3, top: 3),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          for (int i = 1; i <= Random().nextInt(100) + 2; i++)
                            allColor
                                .elementAt(Random().nextInt(allColor.length))
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  right: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: screenWidth * 0.27,
                              height: screenWidth * 0.11,
                              decoration: BoxDecoration(
                                  gradient: RadialGradient(colors: [
                                Color.fromARGB(255, 30, 38, 41),
                                Color.fromARGB(255, 16, 24, 27)
                              ])),
                              child: TextButton(
                                onPressed: () {
                                  resetValue();
                                },
                                child: Text(
                                  "R E S E T",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 221, 225, 228)),
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.27,
                              height: screenWidth * 0.11,
                              decoration: BoxDecoration(
                                  gradient: RadialGradient(colors: [
                                Color.fromARGB(255, 30, 38, 41),
                                Color.fromARGB(255, 16, 24, 27)
                              ])),
                              child: TextButton(
                                onPressed: () {
                                  setValue();
                                },
                                child: Text(
                                  "S E T",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 221, 225, 228)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  left: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.03,
                                margin: EdgeInsets.only(
                                  right: screenWidth * 0.01,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.black54),
                                    color: Color.fromARGB(255, 88, 96, 99),
                                    shape: BoxShape.circle),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(""),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                    EdgeInsets.only(bottom: 5, right: 3, left: 3, top: 3),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          for (int i = 1; i <= Random().nextInt(100) + 2; i++)
                            allColor
                                .elementAt(Random().nextInt(allColor.length))
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth * 0.03,
                          margin: EdgeInsets.only(
                            left: screenWidth * 0.01,
                          ),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 3, color: Colors.black54),
                              color: Color.fromARGB(255, 88, 96, 99),
                              shape: BoxShape.circle),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.03,
                          margin: EdgeInsets.only(
                            right: screenWidth * 0.01,
                          ),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 3, color: Colors.black54),
                              color: Color.fromARGB(255, 88, 96, 99),
                              shape: BoxShape.circle),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
  void playGame(int n) async
  {
    bool temp=true;
    int r;
    if(btn[n]=="" && winTemp)
    {
      value=(value=="O")?"X":"O";
      btn[n]=value;
      if(winStatus())
      {
        winTemp=false;
        setState(() { });
        temp=false;
        await Future.delayed(Duration(seconds: 2),(){
          setValue();
        });
      }else{
        if(btn.contains("")){
          value=(value=="O")?"X":"O";
          while(true)
          {
            r=Random().nextInt(9);
            if(btn[r]==""){
              btn[r]=value;
              break;
            }
          }
          if(winStatus())
          {
            winTemp=false;
            setState(() { });
            temp=false;
            await Future.delayed(Duration(seconds: 2),(){
              setValue();
            });
          }
        }
      }
    }
    if(temp) {
      setState(() { });
    }
  }
  bool winStatus()
  {
    if((btn[0]=="X" && btn[1]=="X" && btn[2]=="X") || (btn[3]=="X" && btn[4]=="X" && btn[5]=="X") || (btn[6]=="X" && btn[7]=="X" && btn[8]=="X") || (btn[0]=="X" && btn[3]=="X" && btn[6]=="X") || (btn[1]=="X" && btn[4]=="X" && btn[7]=="X") || (btn[2]=="X" && btn[5]=="X" && btn[8]=="X") || (btn[0]=="X" && btn[4]=="X" && btn[8]=="X") || (btn[2]=="X" && btn[4]=="X" && btn[6]=="X"))
    {
      xWin++;
      return true;
    }else if((btn[0]=="O" && btn[1]=="O" && btn[2]=="O") || (btn[3]=="O" && btn[4]=="O" && btn[5]=="O") || (btn[6]=="O" && btn[7]=="O" && btn[8]=="O") || (btn[0]=="O" && btn[3]=="O" && btn[6]=="O") || (btn[1]=="O" && btn[4]=="O" && btn[7]=="O") || (btn[2]=="O" && btn[5]=="O" && btn[8]=="O") || (btn[0]=="O" && btn[4]=="O" && btn[8]=="O") || (btn[2]=="O" && btn[4]=="O" && btn[6]=="O"))
    {
      oWin++;
      return true;
    }
    return false;
  }
  void setValue({bool? temp})
  {
    value="O";
    for(int i=0;i<btn.length;i++)
    {
      btn[i]="";
    }
    winTemp=true;
    if(temp==null){
      setState(() { });
    }
  }
  void resetValue()
  {
    setValue(temp: true);
    xWin=0;
    oWin=0;
    setState(() { });
  }
}
