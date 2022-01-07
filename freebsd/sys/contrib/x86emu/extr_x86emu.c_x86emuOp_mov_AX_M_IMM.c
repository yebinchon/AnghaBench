
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int mode; int R_AX; int R_EAX; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int fetch_data_long (struct x86emu*,int ) ;
 int fetch_data_word (struct x86emu*,int ) ;
 int fetch_word_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_mov_AX_M_IMM(struct x86emu *emu)
{
 uint16_t offset;

 offset = fetch_word_imm(emu);
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  emu->x86.R_EAX = fetch_data_long(emu, offset);
 } else {
  emu->x86.R_AX = fetch_data_word(emu, offset);
 }
}
