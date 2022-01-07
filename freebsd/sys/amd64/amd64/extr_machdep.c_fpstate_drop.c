
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_pcb; } ;
struct TYPE_2__ {int td_pcb; } ;


 int KASSERT (int ,char*) ;
 int PCB_FPUINITDONE ;
 int PCB_USERFPUINITDONE ;
 int PCB_USER_FPU (int ) ;
 struct thread* PCPU_GET (int ) ;
 int clear_pcb_flags (int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_1__* curthread ;
 int fpcurthread ;
 int fpudrop () ;

void
fpstate_drop(struct thread *td)
{

 KASSERT(PCB_USER_FPU(td->td_pcb), ("fpstate_drop: kernel-owned fpu"));
 critical_enter();
 if (PCPU_GET(fpcurthread) == td)
  fpudrop();
 clear_pcb_flags(curthread->td_pcb,
     PCB_FPUINITDONE | PCB_USERFPUINITDONE);
 critical_exit();
}
