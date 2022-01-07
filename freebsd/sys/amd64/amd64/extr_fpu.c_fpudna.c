
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_tid; } ;
struct TYPE_2__ {int pcb_flags; } ;


 int KASSERT (int,char*) ;
 int PCB_FPUNOSAVE ;
 struct thread* PCPU_GET (int ) ;
 scalar_t__ __predict_false (int) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_1__* curpcb ;
 struct thread* curthread ;
 int fpcurthread ;
 int panic (char*,struct thread*,int ,struct thread*,int ) ;
 int restore_fpu_curthread (struct thread*) ;
 int stop_emulating () ;

void
fpudna(void)
{
 struct thread *td;

 td = curthread;
 critical_enter();

 KASSERT((curpcb->pcb_flags & PCB_FPUNOSAVE) == 0,
     ("fpudna while in fpu_kern_enter(FPU_KERN_NOCTX)"));
 if (__predict_false(PCPU_GET(fpcurthread) == td)) {






  stop_emulating();
 } else {
  if (__predict_false(PCPU_GET(fpcurthread) != ((void*)0))) {
   panic(
      "fpudna: fpcurthread = %p (%d), curthread = %p (%d)\n",
       PCPU_GET(fpcurthread),
       PCPU_GET(fpcurthread)->td_tid, td, td->td_tid);
  }
  restore_fpu_curthread(td);
 }
 critical_exit();
}
