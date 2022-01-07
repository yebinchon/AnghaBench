
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unwind_state {int * registers; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int sf_pc; int sf_lr; int sf_sp; int sf_r11; } ;
struct pcb {TYPE_1__ pcb_regs; } ;


 size_t FP ;
 size_t LR ;
 size_t PC ;
 size_t SP ;
 struct thread* curthread ;
 int db_stack_trace_cmd (struct unwind_state*) ;
 int db_trace_self () ;
 struct pcb* kdb_thr_ctx (struct thread*) ;

int
db_trace_thread(struct thread *thr, int count)
{
 struct unwind_state state;
 struct pcb *ctx;

 if (thr != curthread) {
  ctx = kdb_thr_ctx(thr);

  state.registers[FP] = ctx->pcb_regs.sf_r11;
  state.registers[SP] = ctx->pcb_regs.sf_sp;
  state.registers[LR] = ctx->pcb_regs.sf_lr;
  state.registers[PC] = ctx->pcb_regs.sf_pc;

  db_stack_trace_cmd(&state);
 } else
  db_trace_self();
 return (0);
}
