
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int R_EDI; int R_ESI; int R_EBP; int R_ESP; int R_EBX; int R_EDX; int R_ECX; int R_EAX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int x86emu_halt_sys (struct x86emu*) ;

__attribute__((used)) static uint32_t *
decode_rm_long_register(struct x86emu *emu, int reg)
{
 switch (reg) {
 case 0:
  return &emu->x86.R_EAX;
 case 1:
  return &emu->x86.R_ECX;
 case 2:
  return &emu->x86.R_EDX;
 case 3:
  return &emu->x86.R_EBX;
 case 4:
  return &emu->x86.R_ESP;
 case 5:
  return &emu->x86.R_EBP;
 case 6:
  return &emu->x86.R_ESI;
 case 7:
  return &emu->x86.R_EDI;
 default:
  x86emu_halt_sys(emu);
 }
}
