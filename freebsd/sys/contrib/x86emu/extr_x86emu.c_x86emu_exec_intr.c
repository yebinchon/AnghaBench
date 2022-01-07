
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ intr; int R_IP; int R_CS; int R_FLG; } ;
struct x86emu {TYPE_1__ x86; int (* emu_rdw ) (struct x86emu*,int) ;} ;


 int CLEAR_FLAG (int ) ;
 int F_IF ;
 int F_TF ;
 int push_word (struct x86emu*,int ) ;
 int stub1 (struct x86emu*,int) ;
 int stub2 (struct x86emu*,int) ;
 int x86emu_exec (struct x86emu*) ;

void
x86emu_exec_intr(struct x86emu *emu, uint8_t intr)
{
 push_word(emu, emu->x86.R_FLG);
 CLEAR_FLAG(F_IF);
 CLEAR_FLAG(F_TF);
 push_word(emu, 0);
 push_word(emu, 0);
 emu->x86.R_CS = (*emu->emu_rdw)(emu, intr * 4 + 2);
 emu->x86.R_IP = (*emu->emu_rdw)(emu, intr * 4);
 emu->x86.intr = 0;

 x86emu_exec(emu);
}
