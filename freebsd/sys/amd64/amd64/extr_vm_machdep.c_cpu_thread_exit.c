
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; } ;


 int PCB_DBREGS ;
 struct thread* PCPU_GET (int ) ;
 int clear_pcb_flags (struct pcb*,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int fpcurthread ;
 int fpudrop () ;
 int reset_dbregs () ;

void
cpu_thread_exit(struct thread *td)
{
 struct pcb *pcb;

 critical_enter();
 if (td == PCPU_GET(fpcurthread))
  fpudrop();
 critical_exit();

 pcb = td->td_pcb;


 if (pcb->pcb_flags & PCB_DBREGS) {
  reset_dbregs();
  clear_pcb_flags(pcb, PCB_DBREGS);
 }
}
