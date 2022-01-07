
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int efl; int ctl; } ;


 int KEYBUFSZ ;
 int V86_FLAGS ;
 int V86_ZR (int ) ;
 scalar_t__* keybuf ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
vidc_ischar(void)
{
 int i;

 for (i = 0; i < KEYBUFSZ; i++) {
  if (keybuf[i] != 0) {
   return (1);
  }
 }

 v86.ctl = V86_FLAGS;
 v86.addr = 0x16;
 v86.eax = 0x100;
 v86int();
 return (!V86_ZR(v86.efl));
}
