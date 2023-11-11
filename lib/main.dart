import 'package:flutter/material.dart';
import 'bandung.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Bandung',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Jawa Barat, Indonesia',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.yellowAccent,
          ),
          const Text('4.5'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kota Bandung adalah ibu kota yang sekaligus menjadi pusat pemeritahan dan perekonomian dari provinsi Jawa Barat,Indonesia. Kota Bandung juga merupakan kota terbesar keempat di Indonesia, setelah Jakarta,Surabaya dan Medan. dan Bandung merupakan menjadi kota terpadat kedua di Indonesia setelah Jakarta. Kota ini tercatat dalam berbagai sejarah penting yang pernah terjadi diIndonesia.',
            softWrap: true,
          ),
          SizedBox(height: 16),
          Center(
            child: Material(
              color: Colors.indigo, // Set the background color
              child: InkWell(
                onTap: () {
                  // Navigate to the NewPage when the "+" button is pressed
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(10), // Adjust padding as needed
                  child: Icon(Icons.navigate_next, color: Colors.white), // Set the icon color
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.approval_rounded, 'LOKASI'),
        _buildButtonColumn(Colors.black, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Informasi Geografi Kota Bandung',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            'Informasi Geografi Kota Bandung',
            style: TextStyle(
              color: Colors.black, // Set the text color
              fontSize: 20, // Set the text size
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.network(
              'https://www.pegipegi.com/travel/wp-content/uploads/2015/06/Gedung-Sate-Bandung.png',
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}