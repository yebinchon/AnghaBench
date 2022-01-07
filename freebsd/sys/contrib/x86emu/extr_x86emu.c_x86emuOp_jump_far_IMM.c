
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {void* R_CS; void* R_IP; } ;
struct x86emu {TYPE_1__ x86; } ;


 void* fetch_word_imm (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_jump_far_IMM(struct x86emu *emu)
{
 uint16_t cs, ip;

 ip = fetch_word_imm(emu);
 cs = fetch_word_imm(emu);
 emu->x86.R_IP = ip;
 emu->x86.R_CS = cs;
}
