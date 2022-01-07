
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unwind_state {int pc; int fp; int sp; } ;
struct thread {TYPE_1__* td_pcb; } ;
struct stack {int dummy; } ;
struct TYPE_2__ {int * pcb_x; int pcb_sp; } ;


 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_IS_SWAPPED (struct thread*) ;
 int panic (char*) ;
 int stack_capture (struct stack*,struct unwind_state*) ;

void
stack_save_td(struct stack *st, struct thread *td)
{
 struct unwind_state frame;

 if (TD_IS_SWAPPED(td))
  panic("stack_save_td: swapped");
 if (TD_IS_RUNNING(td))
  panic("stack_save_td: running");

 frame.sp = td->td_pcb->pcb_sp;
 frame.fp = td->td_pcb->pcb_x[29];
 frame.pc = td->td_pcb->pcb_x[30];

 stack_capture(st, &frame);
}
