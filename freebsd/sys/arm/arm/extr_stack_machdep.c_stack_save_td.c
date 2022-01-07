
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unwind_state {int * registers; } ;
struct thread {TYPE_2__* td_pcb; } ;
struct stack {int dummy; } ;
struct TYPE_3__ {int sf_pc; int sf_lr; int sf_sp; int sf_r11; } ;
struct TYPE_4__ {TYPE_1__ pcb_regs; } ;


 size_t FP ;
 int KASSERT (int,char*) ;
 size_t LR ;
 size_t PC ;
 size_t SP ;
 int TD_IS_RUNNING (struct thread*) ;
 int TD_IS_SWAPPED (struct thread*) ;
 int stack_capture (struct stack*,struct unwind_state*) ;

void
stack_save_td(struct stack *st, struct thread *td)
{
 struct unwind_state state;

 KASSERT(!TD_IS_SWAPPED(td), ("stack_save_td: swapped"));
 KASSERT(!TD_IS_RUNNING(td), ("stack_save_td: running"));

 state.registers[FP] = td->td_pcb->pcb_regs.sf_r11;
 state.registers[SP] = td->td_pcb->pcb_regs.sf_sp;
 state.registers[LR] = td->td_pcb->pcb_regs.sf_lr;
 state.registers[PC] = td->td_pcb->pcb_regs.sf_pc;

 stack_capture(st, &state);
}
