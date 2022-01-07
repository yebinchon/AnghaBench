
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
special(int ch) {
 switch (ch) {
 case 0x22:
 case 0x2E:
 case 0x3B:
 case 0x5C:
 case 0x28:
 case 0x29:

 case 0x40:
 case 0x24:
  return (1);
 default:
  return (0);
 }
}
