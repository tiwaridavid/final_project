import 'package:flutter/material.dart';
import 'package:my_final_assignment/app/constants/theme_constant.dart';


class AppTheme {
  AppTheme._();

  static getApplicationTheme(bool isDark) {
    return ThemeData(
      // change the theme according to the user preference
      colorScheme: isDark
          ? const ColorScheme.dark(
              primary: Color.fromARGB(255, 157, 241, 162),
            )
          : const ColorScheme.light(
              primary: Color.fromARGB(255, 188, 183, 226),
            ),
      brightness: isDark ? Brightness.dark : Brightness.light,
      fontFamily: 'Montserrat',
      useMaterial3: true,

      // Change app bar color
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Color.fromARGB(201, 186, 187, 191),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 155, 5, 5),
          fontSize: 20,
        ),
      ),

      // Change elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: const Color.fromARGB(255, 166, 31, 31),
          backgroundColor: Color.fromARGB(255, 128, 96, 243),
          textStyle: const TextStyle(
            fontSize: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),

      // Change text field theme
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(),
        labelStyle: TextStyle(
          fontSize: 20,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 43, 37, 36),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 47, 28, 32),
          ),
        ),
      ),
      // Circular progress bar theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Color.fromARGB(255, 92, 76, 175),
      ),
      //Bottom navigation bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(255, 195, 74, 74),
        selectedItemColor: Color.fromARGB(255, 59, 52, 52),
        unselectedItemColor: Color.fromARGB(255, 176, 166, 16),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }
}
