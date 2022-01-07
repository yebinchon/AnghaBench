
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_initial_fpucw; int pcb_save; } ;


 int PCB_FPUINITDONE ;
 int PCB_USERFPUINITDONE ;
 scalar_t__ PCB_USER_FPU (struct pcb*) ;
 int PCPU_SET (int ,struct thread*) ;
 scalar_t__ __INITIAL_FPUCW__ ;
 int bcopy (int ,int ,int ) ;
 int cpu_max_ext_state_size ;
 int fldcw (scalar_t__) ;
 int fpcurthread ;
 int fpu_clean_state () ;
 int fpu_initialstate ;
 int fpurestore (int ) ;
 int set_pcb_flags (struct pcb*,int) ;
 int stop_emulating () ;

__attribute__((used)) static void
restore_fpu_curthread(struct thread *td)
{
 struct pcb *pcb;




 PCPU_SET(fpcurthread, td);

 stop_emulating();
 fpu_clean_state();
 pcb = td->td_pcb;

 if ((pcb->pcb_flags & PCB_FPUINITDONE) == 0) {
  bcopy(fpu_initialstate, pcb->pcb_save,
      cpu_max_ext_state_size);
  fpurestore(pcb->pcb_save);
  if (pcb->pcb_initial_fpucw != __INITIAL_FPUCW__)
   fldcw(pcb->pcb_initial_fpucw);
  if (PCB_USER_FPU(pcb))
   set_pcb_flags(pcb, PCB_FPUINITDONE |
       PCB_USERFPUINITDONE);
  else
   set_pcb_flags(pcb, PCB_FPUINITDONE);
 } else
  fpurestore(pcb->pcb_save);
}
