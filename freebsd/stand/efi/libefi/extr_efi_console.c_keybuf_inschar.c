
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ScanCode; char UnicodeChar; } ;
typedef TYPE_1__ EFI_INPUT_KEY ;


 char CHAR_BACKSPACE ;






 char* keybuf ;

__attribute__((used)) static void
keybuf_inschar(EFI_INPUT_KEY *key)
{

 switch (key->ScanCode) {
 case 128:
  keybuf[0] = 0x1b;
  keybuf[1] = '[';
  keybuf[2] = 'A';
  break;
 case 132:
  keybuf[0] = 0x1b;
  keybuf[1] = '[';
  keybuf[2] = 'B';
  break;
 case 129:
  keybuf[0] = 0x1b;
  keybuf[1] = '[';
  keybuf[2] = 'C';
  break;
 case 130:
  keybuf[0] = 0x1b;
  keybuf[1] = '[';
  keybuf[2] = 'D';
  break;
 case 133:
  keybuf[0] = CHAR_BACKSPACE;
  break;
 case 131:
  keybuf[0] = 0x1b;
  break;
 default:
  keybuf[0] = key->UnicodeChar;
  break;
 }
}
