import 'package:flutter/material.dart';

// Dart is a statically gradually typed language
// var testingTypes = '-V5';
// testingTypes = 2;

// String getFullName(String firstName, String secondName) =>
//     '$firstName $secondName';

// String printMyName() {
//   return '';
// }

// void ifElseStatements() {
//   final name = 'Foo';

//   if (name == 'Foo') {
//     print('Yes, this is foo');
//     print('Yes, this is foo!');
//     print('Yes, this is foo!!');
//   } else if (name != 'Bar') {
//     print('This value is not bar');
//   } else {
//     print('No, this is not food');
//     print('I don\'t know what this is');
//   }
// }

// void operators() {
//   print('Bar Foo Baz ' * 100);
// }

// void dataStructures() {
//   var list = ['Foo', 'Bar', 'Baz'];
//   print(list.length);
//   list.add('My name');
//   print(list.length);

//   final stringSet = {'a', 'b'};
//   stringSet.add('value');
//   print(stringSet);
//   print(stringSet.runtimeType);
//   // stringSet type: _Set<String>

//   final objectSet = {'foo', 'bar', 'baz', 1};
//   objectSet.add('foo');
//   objectSet.add('bar');
//   objectSet.add('baz');
//   objectSet.add('bak');
//   objectSet.add(24);
//   print(objectSet);
//   print(objectSet.runtimeType);
//   // setsObject type: _Set<Object>

//   final person = {'age': '20', 'name': 'Foo'};
//   person['lastName'] = 'bar';
//   print('person string map: $person');
// }

// void nullable() {
//   String? name;

//   List<String?>? names = ['Foo', 'Bar', null];

//   print('$name, $names');
// }

// String? cherryPicking(String? firstName, String? middleName, String? lastName) {
//   // const String? firstName = null;
//   // const String? middleName = 'Foo';
//   // const String? lastName = 'Foo';

//   // if (firstName != null) {
//   //   print('first name is the first non-null value');
//   // } else if (middleName != null) {
//   //   print('middle name is the first non-null value');
//   // } else if (lastName != null) {
//   //   print('last name is the first non-null value');
//   // }

//   final firstNonNullValue = firstName ?? middleName ?? lastName;
//   return firstNonNullValue;
// }

// void nullAwareAssignment(
//     String? firstName, String? middleName, String? lastName) {
//   String? name = firstName;
//   name ??= middleName;
//   name ??= lastName;
//   print(name);
// }

// void conditionalInvocation(List<String>? names) {
//   names?.add('Baz');

//   final length = names?.length ?? 0;

//   // int length = 0;
//   // if (names != null) {
//   //   length = names.length;
//   // }

//   print('names length: $length');
// }

///
/// ?? after declaration, if left value is null, reassign right value
/// ??= re-declaring value, if null, assign right value
/// ?. if left value is not null, run right property
///

enum PersonProperties { firstName, lastName, age }

enum AnimalType { cat, dog, bunny }

// void enumerations() {
//   const name = 'foo';
//   const otherName = 'foo';

//   print(PersonProperties.firstName);
// }

// void enumerations2(AnimalType animalType) {
//   // if (animalType == AnimalType.cat) {
//   //   print('Oh, I love cats!');
//   // } else if (animalType == AnimalType.dog) {
//   //   print('Dogs are so fluffy');
//   // } else if (animalType == AnimalType.bunny) {
//   //   print('I wish I had a bunny');
//   // }

//   switch (animalType) {
//     case AnimalType.bunny:
//       print('Bunny');
//       break;
//     case AnimalType.cat:
//       print('Cat');
//       break;
//     case AnimalType.dog:
//       print('Dog');
//       break;
//   }

//   print(animalType);
//   print('FUNCTION IS FINISHED');
// }

// void makeSureThisIsACat(AnimalType animalType) {
//   if (animalType != AnimalType.cat) return;
// }

// class Person {
//   final String name;

//   Person(this.name);

//   void printName() {
//     print('I will now print the name of this person');
//     print(name);
//   }

//   void run() {
//     print('Running');
//   }

//   void breathe() {
//     print('Breathing');
//   }
// }

// abstract class LivingThing {
//   void breathe() {
//     print('Living thing is breathing');
//   }

//   void move() {
//     print('I am moving');
//   }
// }

// class Cat extends LivingThing {}

// void classes() {
//   final person = Person('Foo bar');
//   person.run();
//   person.breathe();
//   person.printName();

//   final fluffers = Cat();
//   fluffers.move();
//   fluffers.breathe();
// }

// void abstractClasses() {
//   final thing = Cat();
//   thing.breathe();
// }

// void factoryConstructors() {
//   // final fluffBall = Cat('Fluff ball');
//   // print(fluffBall.name);

//   final fluffBall = Cat.fluffBall();
//   return fluffBall.printName();
// }

// void customOperators() {
//   final cat1 = Cat('Foo');
//   final cat2 = Cat('Foo');

//   if (cat1 == cat2) {
//     print('They are equal');
//   } else {
//     print('They are not equal');
//   }
// }

// class Cat {
//   final String name;
//   Cat(this.name);
//   @override
//   bool operator ==(covariant Cat other) => other.name == name;

//   @override
//   int get hashCode => name.hashCode;

//   factory Cat.fluffBall() {
//     return Cat('Fluff Ball');
//   }

//   void printName() {
//     print('Hi, my name is $name');
//   }
// }

///** ADVANCED DART  *///
///extensions: adding logic to existing classes
// extension Run on Cat {
//   void run() {
//     print('Cat $name is running');
//   }
// }

// class Person {
//   final String firstName;
//   final String secondName;

//   Person(this.firstName, this.secondName);
// }

// extension FullName on Person {
//   String get fullName => '$firstName $secondName';
// }

// void extensions() {
//   final meow = Cat('Fluffers');

//   print(meow.name);
//   meow.run();

//   final foo = Person('Foo', 'Bar');
//   print(foo.fullName);
// }

// int multipliedByTwo(int a) => a * 2;

// Future<int> heavyFutureThatMultipliesByTwo(int a) {
//   Future.delayed(const Duration(seconds: 1), () => print('...'));
//   Future.delayed(const Duration(seconds: 2), () => print('...!'));
//   return Future.delayed(const Duration(seconds: 3), () => a * 2);
// }

// void future() async {
//   print('Wait for it...');

//   final result = await heavyFutureThatMultipliesByTwo(10);
//   print(result);
// }

// Stream<String> getName() {
//   // return Stream.value('streamed value');
//   return Stream.periodic(const Duration(seconds: 1), (value) {
//     return 'Foo $value';
//   });
// }

// void streams() async {
//   await for (final value in getName()) {
//     print('STREAM: $value');
//   }
//   print('Stream finished working!');
// }

// Iterable<int> getOneTwoThree() sync* {
//   yield 1;
//   yield 2;
//   yield 3;
// }

// Stream<Iterable<int>> getNumbers() async* {
//   yield [1];
//   yield [2];
//   yield [3];
// }

// void generators() {
//   print('hello from gens!');

//   for (final value in getOneTwoThree()) {
//     print(value);
//     if (value == 2) {
//       break;
//     }
//   }
// }

class PairOfStrings {
  final String value1;
  final String value2;

  PairOfStrings(this.value1, this.value2);
}

class PairOfIntegers {
  final int value1;
  final int value2;

  PairOfIntegers(this.value1, this.value2);
}

class Pair<A, B> {
  final A value1;
  final B value2;

  Pair(this.value1, this.value2);
}

void generics() {
  final names = Pair('foo', 'Bar');
  final mixed = Pair('foo', 2);
  final count = Pair(1, 2);

  List<Pair> all = [names, mixed, count];

  for (final each in all) {
    print(each.runtimeType);
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print(getFullName('hello', 'there'));
    // ifElseStatements();
    // operators();
    // dataStructures();
    // nullable();
    // print(cherryPicking(null, null, 'hello'));
    // nullAwareAssignment(null, null, 'lastName');
    // conditionalInvocation(['a', 'b', 'c']);
    // enumerations();
    // enumerations2(AnimalType.cat);
    // classes();
    // abstractClasses();
    // factoryConstructors();
    // customOperators();
    // extensions();
    // future();
    // streams();
    // generators();
    generics();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
