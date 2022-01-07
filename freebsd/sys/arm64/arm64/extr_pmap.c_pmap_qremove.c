
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int pt_entry_t ;


 int KASSERT (int,char*) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int kernel_pmap ;
 int pmap_clear (int *) ;
 int pmap_invalidate_range (int ,scalar_t__,scalar_t__) ;
 int * pmap_pte (int ,scalar_t__,int*) ;

void
pmap_qremove(vm_offset_t sva, int count)
{
 pt_entry_t *pte;
 vm_offset_t va;
 int lvl;

 KASSERT(sva >= VM_MIN_KERNEL_ADDRESS, ("usermode va %lx", sva));

 va = sva;
 while (count-- > 0) {
  pte = pmap_pte(kernel_pmap, va, &lvl);
  KASSERT(lvl == 3,
      ("Invalid device pagetable level: %d != 3", lvl));
  if (pte != ((void*)0)) {
   pmap_clear(pte);
  }

  va += PAGE_SIZE;
 }
 pmap_invalidate_range(kernel_pmap, sva, va);
}
