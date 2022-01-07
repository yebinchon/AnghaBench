
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcb {int pcb_pagedir; int pcb_dacr; int pcb_l1vec; int * pcb_pl1vec; } ;
typedef int pmap_t ;
struct TYPE_2__ {struct pcb* td_pcb; } ;


 scalar_t__ KERNBASE ;
 scalar_t__ PAGE_SIZE ;
 struct pcb* PCPU_GET (int ) ;
 int cpu_cpwait () ;
 int cpu_domains (int ) ;
 int cpu_l2cache_wbinv_all () ;
 int cpu_setttb (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 struct pcb* curpcb ;
 int dprintf (char*) ;
 int pmap_free_l1 (int ) ;
 int pmap_idcache_wbinv_all (int ) ;
 scalar_t__ pmap_is_current (int ) ;
 int pmap_remove (int ,scalar_t__,scalar_t__) ;
 int pmap_tlb_flushID (int ) ;
 TYPE_1__ thread0 ;
 scalar_t__ vector_page ;

void
pmap_release(pmap_t pmap)
{
 struct pcb *pcb;

 pmap_idcache_wbinv_all(pmap);
 cpu_l2cache_wbinv_all();
 pmap_tlb_flushID(pmap);
 cpu_cpwait();
 if (vector_page < KERNBASE) {
  struct pcb *curpcb = PCPU_GET(curpcb);
  pcb = thread0.td_pcb;
  if (pmap_is_current(pmap)) {






   critical_enter();
   *pcb->pcb_pl1vec = pcb->pcb_l1vec;
   cpu_domains(pcb->pcb_dacr);
   cpu_setttb(pcb->pcb_pagedir);
   critical_exit();
  }
  pmap_remove(pmap, vector_page, vector_page + PAGE_SIZE);




  curpcb->pcb_pl1vec = pcb->pcb_pl1vec;
  curpcb->pcb_l1vec = pcb->pcb_l1vec;
  curpcb->pcb_dacr = pcb->pcb_dacr;
  curpcb->pcb_pagedir = pcb->pcb_pagedir;

 }
 pmap_free_l1(pmap);

 dprintf("pmap_release()\n");
}
