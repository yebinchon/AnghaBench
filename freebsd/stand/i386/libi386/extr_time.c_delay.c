
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int ecx; int edx; scalar_t__ ctl; } ;


 TYPE_1__ v86 ;
 int v86int () ;

void
delay(int period)
{
    v86.ctl = 0;
    v86.addr = 0x15;
    v86.eax = 0x8600;
    v86.ecx = period >> 16;
    v86.edx = period & 0xffff;
    v86int();
}
