
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {int td_kstack_pages; struct pcb* td_pcb; struct trapframe* td_frame; scalar_t__ td_kstack; } ;
struct pcb {int dummy; } ;


 int PAGE_SIZE ;
 scalar_t__ STACKALIGN (struct trapframe*) ;

void
cpu_thread_alloc(struct thread *td)
{

 td->td_pcb = (struct pcb *)(td->td_kstack +
     td->td_kstack_pages * PAGE_SIZE) - 1;
 td->td_frame = (struct trapframe *)STACKALIGN(
     (struct trapframe *)td->td_pcb - 1);
}
