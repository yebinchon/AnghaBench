
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
struct TYPE_2__ {void* R_BP; void* R_SP; int R_SS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int fetch_byte_imm (struct x86emu*) ;
 void* fetch_word (struct x86emu*,int ,int) ;
 void* fetch_word_imm (struct x86emu*) ;
 int push_word (struct x86emu*,void*) ;

__attribute__((used)) static void
x86emuOp_enter(struct x86emu *emu)
{
 uint16_t local, frame_pointer;
 uint8_t nesting;
 int i;

 local = fetch_word_imm(emu);
 nesting = fetch_byte_imm(emu);
 push_word(emu, emu->x86.R_BP);
 frame_pointer = emu->x86.R_SP;
 if (nesting > 0) {
  for (i = 1; i < nesting; i++) {
   emu->x86.R_BP -= 2;
   push_word(emu, fetch_word(emu, emu->x86.R_SS,
       emu->x86.R_BP));
  }
  push_word(emu, frame_pointer);
 }
 emu->x86.R_BP = frame_pointer;
 emu->x86.R_SP = (uint16_t) (emu->x86.R_SP - local);
}
