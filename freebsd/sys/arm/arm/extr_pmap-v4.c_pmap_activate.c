
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct thread {struct pcb* td_pcb; TYPE_1__* td_proc; } ;
struct pcb {int pcb_dacr; scalar_t__ pcb_pagedir; int pcb_l1vec; int * pcb_pl1vec; } ;
typedef int pmap_t ;
struct TYPE_2__ {int p_vmspace; } ;


 int L1_TABLE_SIZE ;
 int cpu_domains (int) ;
 int cpu_setttb (scalar_t__) ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int pmap_set_pcb_pagedir (int ,struct pcb*) ;
 int vmspace_pmap (int ) ;

void
pmap_activate(struct thread *td)
{
 pmap_t pm;
 struct pcb *pcb;

 pm = vmspace_pmap(td->td_proc->p_vmspace);
 pcb = td->td_pcb;

 critical_enter();
 pmap_set_pcb_pagedir(pm, pcb);

 if (td == curthread) {
  u_int cur_dacr, cur_ttb;

  __asm __volatile("mrc p15, 0, %0, c2, c0, 0" : "=r"(cur_ttb));
  __asm __volatile("mrc p15, 0, %0, c3, c0, 0" : "=r"(cur_dacr));

  cur_ttb &= ~(L1_TABLE_SIZE - 1);

  if (cur_ttb == (u_int)pcb->pcb_pagedir &&
      cur_dacr == pcb->pcb_dacr) {



   critical_exit();
   return;
  }
  if (pcb->pcb_pl1vec) {

   *pcb->pcb_pl1vec = pcb->pcb_l1vec;





  }

  cpu_domains(pcb->pcb_dacr);
  cpu_setttb(pcb->pcb_pagedir);
 }
 critical_exit();
}
