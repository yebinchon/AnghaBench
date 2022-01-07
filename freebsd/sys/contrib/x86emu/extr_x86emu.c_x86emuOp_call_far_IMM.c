
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {void* R_IP; void* R_CS; } ;
struct x86emu {TYPE_1__ x86; } ;


 void* fetch_word_imm (struct x86emu*) ;
 int push_word (struct x86emu*,void*) ;

__attribute__((used)) static void
x86emuOp_call_far_IMM(struct x86emu *emu)
{
 uint16_t farseg, faroff;

 faroff = fetch_word_imm(emu);
 farseg = fetch_word_imm(emu);





 push_word(emu, emu->x86.R_CS);
 emu->x86.R_CS = farseg;
 push_word(emu, emu->x86.R_IP);
 emu->x86.R_IP = faroff;
}
