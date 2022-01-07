
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct trapframe {int tf_pc; int tf_r0; } ;
struct thread {struct trapframe* td_frame; TYPE_1__* td_pcb; } ;
struct ksig {int signb; scalar_t__ code; } ;
struct TYPE_2__ {scalar_t__ pcb_onfault; } ;


 int EFAULT ;
 int SIGBUS ;
 int TRAP_USERMODE (struct trapframe*) ;
 int dab_fatal (struct trapframe*,int ,int ,struct thread*,struct ksig*) ;

__attribute__((used)) static int
dab_align(struct trapframe *tf, u_int fsr, u_int far, struct thread *td,
    struct ksig *ksig)
{


 if (!TRAP_USERMODE(tf)) {
  if (!td || !td->td_pcb->pcb_onfault)
   dab_fatal(tf, fsr, far, td, ksig);
  tf->tf_r0 = EFAULT;
  tf->tf_pc = (int)td->td_pcb->pcb_onfault;
  return (0);
 }




 ksig->code = 0;
 ksig->signb = SIGBUS;
 td->td_frame = tf;

 return (1);
}
