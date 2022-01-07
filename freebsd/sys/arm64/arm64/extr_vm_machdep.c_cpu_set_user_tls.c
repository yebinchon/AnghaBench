
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct pcb {void* pcb_tpidr_el0; void* pcb_tpidrro_el0; } ;
typedef void* register_t ;
struct TYPE_2__ {int tf_spsr; } ;


 int EINVAL ;
 int PSR_M_32 ;
 uintptr_t VM_MAXUSER_ADDRESS ;
 int WRITE_SPECIALREG (int ,void*) ;
 struct thread* curthread ;
 int tpidr_el0 ;
 int tpidrro_el0 ;

int
cpu_set_user_tls(struct thread *td, void *tls_base)
{
 struct pcb *pcb;

 if ((uintptr_t)tls_base >= VM_MAXUSER_ADDRESS)
  return (EINVAL);

 pcb = td->td_pcb;
 if (td->td_frame->tf_spsr & PSR_M_32) {

  pcb->pcb_tpidrro_el0 = (register_t)tls_base;
  pcb->pcb_tpidr_el0 = (register_t)tls_base;
  if (td == curthread) {
   WRITE_SPECIALREG(tpidrro_el0, tls_base);
   WRITE_SPECIALREG(tpidr_el0, tls_base);
  }
 } else {
  pcb->pcb_tpidr_el0 = (register_t)tls_base;
  if (td == curthread)
   WRITE_SPECIALREG(tpidr_el0, tls_base);
 }

 return (0);
}
