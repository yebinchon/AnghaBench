
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_pcb; TYPE_1__* td_frame; } ;
struct TYPE_2__ {unsigned long tf_rip; } ;


 int PCB_FULL_IRET ;
 int set_pcb_flags (int ,int ) ;

int
ptrace_set_pc(struct thread *td, unsigned long addr)
{

 td->td_frame->tf_rip = addr;
 set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
 return (0);
}
