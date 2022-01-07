
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; scalar_t__ ctl; } ;


 int KEYBUFSZ ;
 int* keybuf ;
 TYPE_1__ v86 ;
 int v86int () ;
 scalar_t__ vidc_ischar () ;

__attribute__((used)) static int
vidc_getchar(void)
{
 int i, c;

 for (i = 0; i < KEYBUFSZ; i++) {
  if (keybuf[i] != 0) {
   c = keybuf[i];
   keybuf[i] = 0;
   return (c);
  }
 }

 if (vidc_ischar()) {
  v86.ctl = 0;
  v86.addr = 0x16;
  v86.eax = 0x0;
  v86int();
  if ((v86.eax & 0xff) != 0) {
   return (v86.eax & 0xff);
  }


  switch (v86.eax & 0xff00) {
  case 0x4800:
   keybuf[0] = '[';
   keybuf[1] = 'A';
   return (0x1b);
  case 0x4b00:
   keybuf[0] = '[';
   keybuf[1] = 'D';
   return (0x1b);
  case 0x4d00:
   keybuf[0] = '[';
   keybuf[1] = 'C';
   return (0x1b);
  case 0x5000:
   keybuf[0] = '[';
   keybuf[1] = 'B';
   return (0x1b);
  default:
   return (-1);
  }
 } else {
  return (-1);
 }
}
