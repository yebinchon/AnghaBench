
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int efl; } ;


 int V86_ZR (int ) ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
getc(int fn)
{

 v86.addr = 0x16;
 v86.eax = fn << 8;
 v86int();
 return (fn == 0 ? v86.eax & 0xff : !V86_ZR(v86.efl));
}
