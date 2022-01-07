
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int dummy; } ;


 int CRITICAL_ASSERT (struct thread*) ;
 int PCB_FPUINITDONE ;
 int PCB_USERFPUINITDONE ;
 scalar_t__ PCB_USER_FPU (struct pcb*) ;
 int set_pcb_flags (struct pcb*,int) ;

void
fpuuserinited(struct thread *td)
{
 struct pcb *pcb;

 CRITICAL_ASSERT(td);
 pcb = td->td_pcb;
 if (PCB_USER_FPU(pcb))
  set_pcb_flags(pcb,
      PCB_FPUINITDONE | PCB_USERFPUINITDONE);
 else
  set_pcb_flags(pcb, PCB_FPUINITDONE);
}
