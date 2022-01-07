
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int R_FLG; int R_EFLG; } ;
struct x86emu {TYPE_1__ x86; } ;


 int SYSMODE_PREFIX_DATA ;
 int pop_long (struct x86emu*) ;
 int pop_word (struct x86emu*) ;

__attribute__((used)) static void
x86emuOp_popf_word(struct x86emu *emu)
{
 if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
  emu->x86.R_EFLG = pop_long(emu);
 } else {
  emu->x86.R_FLG = pop_word(emu);
 }
}
