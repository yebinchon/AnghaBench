
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int mode; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int fetch_long_imm (struct x86emu*) ;
 int fetch_word_imm (struct x86emu*) ;
 int push_long (struct x86emu*,int ) ;
 int push_word (struct x86emu*,int ) ;

__attribute__((used)) static void
x86emuOp_push_word_IMM(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  uint32_t imm;

  imm = fetch_long_imm(emu);
  push_long(emu, imm);
 } else {
  uint16_t imm;

  imm = fetch_word_imm(emu);
  push_word(emu, imm);
 }
}
