
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; scalar_t__ td_frame; } ;
struct TYPE_2__ {uintptr_t* pcb_x; uintptr_t pcb_sp; int pcb_vfpcpu; int pcb_fpustate; int * pcb_fpusaved; } ;


 size_t PCB_LR ;
 int UINT_MAX ;
 scalar_t__ fork_trampoline ;

void
cpu_fork_kthread_handler(struct thread *td, void (*func)(void *), void *arg)
{

 td->td_pcb->pcb_x[8] = (uintptr_t)func;
 td->td_pcb->pcb_x[9] = (uintptr_t)arg;
 td->td_pcb->pcb_x[PCB_LR] = (uintptr_t)fork_trampoline;
 td->td_pcb->pcb_sp = (uintptr_t)td->td_frame;
 td->td_pcb->pcb_fpusaved = &td->td_pcb->pcb_fpustate;
 td->td_pcb->pcb_vfpcpu = UINT_MAX;
}
