
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_gsbase; int pcb_fsbase; } ;
struct linux_arch_prctl_args {int code; int addr; } ;
struct TYPE_2__ {int tf_fs; int tf_gs; } ;


 int EINVAL ;
 int EPERM ;




 int LINUX_CTR2 (int ,char*,int,int ) ;
 int PCB_FULL_IRET ;
 int PTRIN (int ) ;
 int VM_MAXUSER_ADDRESS ;
 int _ufssel ;
 int _ugssel ;
 int arch_prctl ;
 int copyout (int *,int ,int) ;
 int set_pcb_flags (struct pcb*,int ) ;

int
linux_arch_prctl(struct thread *td, struct linux_arch_prctl_args *args)
{
 struct pcb *pcb;
 int error;

 pcb = td->td_pcb;
 LINUX_CTR2(arch_prctl, "0x%x, %p", args->code, args->addr);

 switch (args->code) {
 case 128:
  if (args->addr < VM_MAXUSER_ADDRESS) {
   set_pcb_flags(pcb, PCB_FULL_IRET);
   pcb->pcb_gsbase = args->addr;
   td->td_frame->tf_gs = _ugssel;
   error = 0;
  } else
   error = EPERM;
  break;
 case 129:
  if (args->addr < VM_MAXUSER_ADDRESS) {
   set_pcb_flags(pcb, PCB_FULL_IRET);
   pcb->pcb_fsbase = args->addr;
   td->td_frame->tf_fs = _ufssel;
   error = 0;
  } else
   error = EPERM;
  break;
 case 131:
  error = copyout(&pcb->pcb_fsbase, PTRIN(args->addr),
      sizeof(args->addr));
  break;
 case 130:
  error = copyout(&pcb->pcb_gsbase, PTRIN(args->addr),
      sizeof(args->addr));
  break;
 default:
  error = EINVAL;
 }
 return (error);
}
