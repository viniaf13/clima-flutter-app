import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocationFromGeolocator();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }

  void getLocationFromGeolocator() async {
    Location location = Location();
    await location.getCurrentLocation();
  }
}
