
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int R_DI; int R_SI; int R_BP; int R_SP; int R_BX; int R_DX; int R_CX; int R_AX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static uint16_t *
decode_rm_word_register(struct x86emu *emu, int reg)
{
 switch (reg) {
 case 0:
  return &emu->x86.R_AX;
 case 1:
  return &emu->x86.R_CX;
 case 2:
  return &emu->x86.R_DX;
 case 3:
  return &emu->x86.R_BX;
 case 4:
  return &emu->x86.R_SP;
 case 5:
  return &emu->x86.R_BP;
 case 6:
  return &emu->x86.R_SI;
 case 7:
  return &emu->x86.R_DI;
 default:
  x86emu_halt_sys(emu);
 }
}
