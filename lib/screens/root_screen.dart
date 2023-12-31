import 'package:wearedaezzok/screens/curation/curation_screen.dart';
import 'package:wearedaezzok/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearedaezzok/utilities/style/color_styles.dart';

import '../widget/base/custom_bottom_navigation_bar.dart';
import 'home/home_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CustomBottomNavigationBarController());
    return Container(
      color: ColorStyles.white,
      child: Scaffold(
        backgroundColor: ColorStyles.white,
        body: Obx(() => IndexedStack(
              index: CustomBottomNavigationBarController.to.selectedIndex.value,
              children: const [
                HomeScreen(),
                CurationScreen(),
                ProfileScreen(),
              ],
            )),
        bottomNavigationBar: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomBottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
