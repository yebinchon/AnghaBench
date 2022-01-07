
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int R_GS; int R_FS; int R_DS; int R_SS; int R_CS; int R_ES; } ;
struct x86emu {int cur_rh; TYPE_1__ x86; } ;


 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static uint16_t *
decode_rh_seg_register(struct x86emu *emu)
{
 switch (emu->cur_rh) {
 case 0:
  return &emu->x86.R_ES;
 case 1:
  return &emu->x86.R_CS;
 case 2:
  return &emu->x86.R_SS;
 case 3:
  return &emu->x86.R_DS;
 case 4:
  return &emu->x86.R_FS;
 case 5:
  return &emu->x86.R_GS;
 default:
  x86emu_halt_sys(emu);
 }
}
