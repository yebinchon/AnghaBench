
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ R_IP; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef int int16_t ;


 scalar_t__ fetch_word_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_jump_near_IMM(struct x86emu *emu)
{
 int ip;

 ip = (int16_t) fetch_word_imm(emu);
 ip += (int16_t) emu->x86.R_IP;
 emu->x86.R_IP = (uint16_t) ip;
}
