
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86emu {int exec_state; } ;


 int longjmp (int ,int) ;

void
x86emu_halt_sys(struct x86emu *emu)
{
 longjmp(emu->exec_state, 1);
}
