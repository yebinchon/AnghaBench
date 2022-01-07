
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; struct pcb* td_pcb; } ;
struct pcb {int pcb_gsbase; int pcb_fsbase; } ;
typedef int rv ;
typedef int register_t ;
struct TYPE_4__ {TYPE_1__* p_sysent; } ;
struct TYPE_3__ {int sv_maxuser; } ;


 int EINVAL ;
 int PT_FIRSTMACH ;
 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_ILP32 ;
 int copyin (void*,int *,int) ;
 int copyout (int *,void*,int) ;
 int cpu32_ptrace (struct thread*,int,void*,int) ;
 int cpu_ptrace_setbase (struct thread*,int,int ) ;
 int cpu_ptrace_xstate (struct thread*,int,void*,int) ;
 struct thread* curthread ;
 int update_pcb_bases (struct pcb*) ;

int
cpu_ptrace(struct thread *td, int req, void *addr, int data)
{
 register_t *r, rv;
 struct pcb *pcb;
 int error;







 if (req == PT_FIRSTMACH + 0)
  req = 132;
 if (req == PT_FIRSTMACH + 1)
  req = 128;

 switch (req) {
 case 132:
 case 128:
 case 133:
 case 134:
 case 129:
  error = cpu_ptrace_xstate(td, req, addr, data);
  break;

 case 136:
 case 135:
  pcb = td->td_pcb;
  if (td == curthread)
   update_pcb_bases(pcb);
  r = req == 136 ? &pcb->pcb_fsbase : &pcb->pcb_gsbase;
  error = copyout(r, addr, sizeof(*r));
  break;

 case 131:
 case 130:
  error = copyin(addr, &rv, sizeof(rv));
  if (error != 0)
   break;
  if (rv >= td->td_proc->p_sysent->sv_maxuser) {
   error = EINVAL;
   break;
  }
  cpu_ptrace_setbase(td, req, rv);
  break;

 default:
  error = EINVAL;
  break;
 }

 return (error);
}
