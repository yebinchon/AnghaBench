
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct thread {int td_proc; struct pcb* td_pcb; } ;
struct pcb {void* pcb_fsbase; void* pcb_gsbase; } ;
typedef void* register_t ;


 int EINVAL ;
 int PCB_FULL_IRET ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int set_pcb_flags (struct pcb*,int ) ;

int
cpu_set_user_tls(struct thread *td, void *tls_base)
{
 struct pcb *pcb;

 if ((u_int64_t)tls_base >= VM_MAXUSER_ADDRESS)
  return (EINVAL);

 pcb = td->td_pcb;
 set_pcb_flags(pcb, PCB_FULL_IRET);






 pcb->pcb_fsbase = (register_t)tls_base;
 return (0);
}
