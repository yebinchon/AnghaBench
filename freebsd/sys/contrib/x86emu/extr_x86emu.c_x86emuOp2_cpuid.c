
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_EAX; int R_EBX; int R_ECX; int R_EDX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int hw_cpuid (int*,int*,int*,int*) ;

__attribute__((used)) static void
x86emuOp2_cpuid(struct x86emu *emu)
{

 hw_cpuid(&emu->x86.R_EAX, &emu->x86.R_EBX, &emu->x86.R_ECX,
     &emu->x86.R_EDX);

 switch (emu->x86.R_EAX) {
 case 0:
  emu->x86.R_EAX = 1;






  break;
 case 1:





  emu->x86.R_EDX &= 0x00000012;

  break;
 default:
  emu->x86.R_EAX = emu->x86.R_EBX = emu->x86.R_ECX =
      emu->x86.R_EDX = 0;
  break;
 }
}
