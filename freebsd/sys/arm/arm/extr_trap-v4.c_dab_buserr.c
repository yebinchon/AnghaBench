
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct trapframe {int tf_spsr; scalar_t__ tf_pc; int tf_r0; scalar_t__ tf_usr_lr; } ;
struct thread {struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct TYPE_2__ {scalar_t__ sf_sp; } ;
struct pcb {int * pcb_onfault; TYPE_1__ pcb_regs; } ;
struct ksig {scalar_t__ code; int signb; } ;
typedef scalar_t__ register_t ;


 int EFAULT ;
 int FAULT_IMPRECISE ;
 int PSR_ABT32_MODE ;
 int PSR_MODE ;
 int PSR_SVC32_MODE ;
 int PSR_USR32_MODE ;
 int SIGBUS ;
 int TRAP_USERMODE (struct trapframe*) ;
 int dab_fatal (struct trapframe*,int,int,struct thread*,struct ksig*) ;
 int printf (char*) ;

__attribute__((used)) static int
dab_buserr(struct trapframe *tf, u_int fsr, u_int far, struct thread *td,
    struct ksig *ksig)
{
 struct pcb *pcb = td->td_pcb;
 if (pcb->pcb_onfault) {
  tf->tf_r0 = EFAULT;
  tf->tf_pc = (register_t)(intptr_t) pcb->pcb_onfault;
  return (0);
 }




 if (!TRAP_USERMODE(tf))
  dab_fatal(tf, fsr, far, td, ksig);


 ksig->signb = SIGBUS;
 ksig->code = 0;
 td->td_frame = tf;

 return (1);
}
