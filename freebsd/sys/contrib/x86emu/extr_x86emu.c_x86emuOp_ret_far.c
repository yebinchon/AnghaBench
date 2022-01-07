
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* R_CS; void* R_IP; } ;
struct x86emu {TYPE_1__ x86; } ;


 void* pop_word (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_ret_far(struct x86emu *emu)
{
 emu->x86.R_IP = pop_word(emu);
 emu->x86.R_CS = pop_word(emu);
}
