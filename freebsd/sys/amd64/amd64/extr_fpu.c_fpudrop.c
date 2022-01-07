
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pcb; } ;


 int CRITICAL_ASSERT (struct thread*) ;
 int KASSERT (int,char*) ;
 int PCB_FPUINITDONE ;
 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 int clear_pcb_flags (int ,int ) ;
 struct thread* curthread ;
 int fpcurthread ;
 int start_emulating () ;

void
fpudrop(void)
{
 struct thread *td;

 td = PCPU_GET(fpcurthread);
 KASSERT(td == curthread, ("fpudrop: fpcurthread != curthread"));
 CRITICAL_ASSERT(td);
 PCPU_SET(fpcurthread, ((void*)0));
 clear_pcb_flags(td->td_pcb, PCB_FPUINITDONE);
 start_emulating();
}
