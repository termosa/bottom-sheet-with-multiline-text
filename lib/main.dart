import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sheet w/ Multiline Issue',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        TextButton(
          child: const Text("Pure"),
          onPressed: () => openPure(context),
        ),
        TextButton(
          child: const Text("MediaQuery"),
          onPressed: () => openMediaQuery(context),
        ),
        TextButton(
          child: const Text("Scroll"),
          onPressed: () => openScroll(context),
        ),
        TextButton(
          child: const Text("Scroll Controlled"),
          onPressed: () => openScrollControlled(context),
        ),
        TextButton(
          child: const Text("Scroll Controlled & MediaQuery"),
          onPressed: () => openScrollControlledWithMediaQuery(context),
        ),
        TextButton(
          child: const Text("Controlled"),
          onPressed: () => openControlledWithMediaQuery(context),
        ),
      ]),
    ));
  }

  void openPure(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => Container(
              padding: const EdgeInsets.all(40),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ));
  }

  void openMediaQuery(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.all(40),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            )));
  }

  void openScroll(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
                child: Container(
              padding: const EdgeInsets.all(40),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            )));
  }

  void openScrollControlled(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
                child: Container(
              padding: const EdgeInsets.all(40),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            )));
  }

  void openScrollControlledWithMediaQuery(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  padding: const EdgeInsets.all(40),
                  child: const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                ))));
  }

  void openControlledWithMediaQuery(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.all(40),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            )));
  }
}
