
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int edx; int ebx; int ecx; int efl; int ctl; } ;


 int EDD_INTERFACE_FIXED_DISK ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
bd_check_extensions(int unit)
{

 if (unit < 0x80)
  return (0);


 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 v86.eax = 0x4100;
 v86.edx = unit;
 v86.ebx = 0x55aa;
 v86int();

 if (V86_CY(v86.efl) ||
     (v86.ebx & 0xffff) != 0xaa55)
  return (0);


 if ((v86.ecx & EDD_INTERFACE_FIXED_DISK) == 0)
  return (0);

 return ((v86.eax >> 8) & 0xff);
}
