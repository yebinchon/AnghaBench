
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int addr; int eax; int edx; int ecx; int efl; int ctl; } ;


 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 TYPE_1__ v86 ;
 int v86int () ;

uint32_t
bd_getbigeom(int bunit)
{

 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 v86.eax = 0x800;
 v86.edx = 0x80 + bunit;
 v86int();
 if (V86_CY(v86.efl))
  return (0x4f010f);
 return (((v86.ecx & 0xc0) << 18) | ((v86.ecx & 0xff00) << 8) |
     (v86.edx & 0xff00) | (v86.ecx & 0x3f));
}
