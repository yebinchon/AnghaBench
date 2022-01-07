
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_BP; int R_SP; } ;
struct x86emu {TYPE_1__ x86; } ;


 int pop_word (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_leave(struct x86emu *emu)
{
 emu->x86.R_SP = emu->x86.R_BP;
 emu->x86.R_BP = pop_word(emu);
}
