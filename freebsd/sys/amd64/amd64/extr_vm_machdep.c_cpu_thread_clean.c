
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int * pcb_tssp; } ;


 scalar_t__ IOPAGES ;
 scalar_t__ ctob (scalar_t__) ;
 int kmem_free (scalar_t__,scalar_t__) ;
 int pmap_pti_remove_kva (scalar_t__,scalar_t__) ;

void
cpu_thread_clean(struct thread *td)
{
 struct pcb *pcb;

 pcb = td->td_pcb;




 if (pcb->pcb_tssp != ((void*)0)) {
  pmap_pti_remove_kva((vm_offset_t)pcb->pcb_tssp,
      (vm_offset_t)pcb->pcb_tssp + ctob(IOPAGES + 1));
  kmem_free((vm_offset_t)pcb->pcb_tssp, ctob(IOPAGES + 1));
  pcb->pcb_tssp = ((void*)0);
 }
}
