
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intr; int intno; scalar_t__ R_CS; scalar_t__ R_IP; } ;
struct x86emu {int cur_cycles; TYPE_1__ x86; int exec_state; } ;


 int ACCESS_FLAG (int ) ;
 int F_IF ;
 int INTR_SYNCH ;
 scalar_t__ setjmp (int ) ;
 int x86emu_exec_one_byte (struct x86emu*) ;
 int x86emu_intr_handle (struct x86emu*) ;

void
x86emu_exec(struct x86emu *emu)
{
 emu->x86.intr = 0;

 if (setjmp(emu->exec_state))
  return;

 for (;;) {
  if (emu->x86.intr) {
   if (((emu->x86.intr & INTR_SYNCH) &&
       (emu->x86.intno == 0 || emu->x86.intno == 2)) ||
       !ACCESS_FLAG(F_IF)) {
    x86emu_intr_handle(emu);
   }
  }
  if (emu->x86.R_CS == 0 && emu->x86.R_IP == 0)
   return;
  x86emu_exec_one_byte(emu);
  ++emu->cur_cycles;
 }
}
