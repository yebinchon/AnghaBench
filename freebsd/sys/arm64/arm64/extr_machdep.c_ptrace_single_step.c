
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_pcb; TYPE_1__* td_frame; } ;
struct TYPE_4__ {int pcb_flags; } ;
struct TYPE_3__ {int tf_spsr; } ;


 int PCB_SINGLE_STEP ;
 int PSR_SS ;

int
ptrace_single_step(struct thread *td)
{

 td->td_frame->tf_spsr |= PSR_SS;
 td->td_pcb->pcb_flags |= PCB_SINGLE_STEP;
 return (0);
}
