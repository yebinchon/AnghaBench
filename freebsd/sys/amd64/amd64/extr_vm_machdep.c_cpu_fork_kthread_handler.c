
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_2__ {long pcb_r12; long pcb_rbx; } ;



void
cpu_fork_kthread_handler(struct thread *td, void (*func)(void *), void *arg)
{




 td->td_pcb->pcb_r12 = (long) func;
 td->td_pcb->pcb_rbx = (long) arg;
}
