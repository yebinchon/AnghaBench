
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int mode; int R_DI; int R_SI; int R_BP; int R_BX; int R_DX; int R_CX; int R_AX; int R_SP; int R_EDI; int R_ESI; int R_EBP; int R_EBX; int R_EDX; int R_ECX; int R_EAX; int R_ESP; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int push_long (struct x86emu*,int ) ;
 int push_word (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp_push_all(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  uint32_t old_sp = emu->x86.R_ESP;

  push_long(emu, emu->x86.R_EAX);
  push_long(emu, emu->x86.R_ECX);
  push_long(emu, emu->x86.R_EDX);
  push_long(emu, emu->x86.R_EBX);
  push_long(emu, old_sp);
  push_long(emu, emu->x86.R_EBP);
  push_long(emu, emu->x86.R_ESI);
  push_long(emu, emu->x86.R_EDI);
 } else {
  uint16_t old_sp = emu->x86.R_SP;

  push_word(emu, emu->x86.R_AX);
  push_word(emu, emu->x86.R_CX);
  push_word(emu, emu->x86.R_DX);
  push_word(emu, emu->x86.R_BX);
  push_word(emu, old_sp);
  push_word(emu, emu->x86.R_BP);
  push_word(emu, emu->x86.R_SI);
  push_word(emu, emu->x86.R_DI);
 }
}
