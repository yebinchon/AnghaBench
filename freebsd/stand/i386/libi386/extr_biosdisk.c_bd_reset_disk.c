
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int edx; scalar_t__ eax; int ctl; } ;


 int V86_FLAGS ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static void
bd_reset_disk(int unit)
{

 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 v86.eax = 0;
 v86.edx = unit;
 v86int();
}
