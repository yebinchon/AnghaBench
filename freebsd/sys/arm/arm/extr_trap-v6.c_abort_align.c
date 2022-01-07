
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct trapframe {int tf_pc; int tf_r0; } ;
struct thread {scalar_t__ td_intr_nesting_level; TYPE_1__* td_pcb; } ;
struct ksig {int addr; int sig; int code; } ;
struct TYPE_2__ {int * pcb_onfault; } ;


 int BUS_ADRALN ;
 int EFAULT ;
 int SIGBUS ;
 int TRAPF_USERMODE (struct trapframe*) ;
 int abort_fatal (struct trapframe*,int ,int ,int ,int ,struct thread*,struct ksig*) ;

__attribute__((used)) static int
abort_align(struct trapframe *tf, u_int idx, u_int fsr, u_int far,
    u_int prefetch, struct thread *td, struct ksig *ksig)
{
 bool usermode;

 usermode = TRAPF_USERMODE(tf);
 if (!usermode) {
  if (td->td_intr_nesting_level == 0 && td != ((void*)0) &&
      td->td_pcb->pcb_onfault != ((void*)0)) {
   tf->tf_r0 = EFAULT;
   tf->tf_pc = (int)td->td_pcb->pcb_onfault;
   return (0);
  }
  abort_fatal(tf, idx, fsr, far, prefetch, td, ksig);
 }

 ksig->code = BUS_ADRALN;
 ksig->sig = SIGBUS;
 ksig->addr = far;
 return (1);
}
