
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int R_SP; int R_IP; } ;
struct x86emu {TYPE_1__ x86; } ;


 scalar_t__ fetch_word_imm (struct x86emu*) ;
 int pop_word (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_ret_near_IMM(struct x86emu *emu)
{
 uint16_t imm;

 imm = fetch_word_imm(emu);
 emu->x86.R_IP = pop_word(emu);
 emu->x86.R_SP += imm;
}
