
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int R_CX; int R_ECX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int fetch_long_imm (struct x86emu*) ;
 int fetch_word_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_mov_word_CX_IMM(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA)
  emu->x86.R_ECX = fetch_long_imm(emu);
 else
  emu->x86.R_CX = fetch_word_imm(emu);
}
