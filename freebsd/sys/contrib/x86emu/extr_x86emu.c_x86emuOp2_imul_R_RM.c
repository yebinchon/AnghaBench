
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int x86emuOp2_16_imul_R_RM (struct x86emu*) ;
 int x86emuOp2_32_imul_R_RM (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_imul_R_RM(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA)
  x86emuOp2_32_imul_R_RM(emu);
 else
  x86emuOp2_16_imul_R_RM(emu);
}
