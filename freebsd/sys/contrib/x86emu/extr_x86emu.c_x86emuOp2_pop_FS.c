
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int R_FS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int pop_word (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp2_pop_FS(struct x86emu *emu)
{
 emu->x86.R_FS = pop_word(emu);
}
