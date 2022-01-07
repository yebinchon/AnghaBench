
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pflags; int td_pcb; } ;


 int PCB_USER_FPU (int ) ;
 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 int TDP_KTHREAD ;
 int fpcurthread ;
 int restore_fpu_curthread (struct thread*) ;
 int start_emulating () ;

void
fpu_activate_sw(struct thread *td)
{

 if ((td->td_pflags & TDP_KTHREAD) != 0 || !PCB_USER_FPU(td->td_pcb)) {
  PCPU_SET(fpcurthread, ((void*)0));
  start_emulating();
 } else if (PCPU_GET(fpcurthread) != td) {
  restore_fpu_curthread(td);
 }
}
