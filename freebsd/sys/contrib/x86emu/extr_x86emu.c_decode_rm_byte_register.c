
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int R_BH; int R_DH; int R_CH; int R_AH; int R_BL; int R_DL; int R_CL; int R_AL; } ;
struct x86emu {TYPE_1__ x86; } ;


 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static uint8_t *
decode_rm_byte_register(struct x86emu *emu, int reg)
{
 switch (reg) {
 case 0:
  return &emu->x86.R_AL;
 case 1:
  return &emu->x86.R_CL;
 case 2:
  return &emu->x86.R_DL;
 case 3:
  return &emu->x86.R_BL;
 case 4:
  return &emu->x86.R_AH;
 case 5:
  return &emu->x86.R_CH;
 case 6:
  return &emu->x86.R_DH;
 case 7:
  return &emu->x86.R_BH;
 default:
  x86emu_halt_sys(emu);
 }
}
