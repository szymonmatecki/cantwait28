import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfil extends StatelessWidget {
  const UserProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
      ],
      actions: [
        SignedOutAction(
          (context) {
            Navigator.of(context).pop();
          },
        ),
      ],
      avatarSize: 24,
    );
  }
}
