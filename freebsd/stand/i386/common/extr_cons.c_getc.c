
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int efl; int ctl; } ;


 int V86_FLAGS ;
 scalar_t__ V86_ZR (int ) ;
 TYPE_1__ v86 ;
 int v86int () ;

int
getc(int fn)
{

 v86.ctl = V86_FLAGS;
 v86.addr = 0x16;
 v86.eax = fn << 8;
 v86int();

 if (fn == 0)
  return (v86.eax);

 if (V86_ZR(v86.efl))
  return (0);
 return (v86.eax);
}
