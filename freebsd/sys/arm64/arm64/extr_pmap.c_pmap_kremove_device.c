
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int KASSERT (int,char*) ;
 int L3_OFFSET ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int kernel_pmap ;
 int pmap_clear (int *) ;
 int pmap_invalidate_range (int ,int,int) ;
 int * pmap_pte (int ,int,int*) ;

void
pmap_kremove_device(vm_offset_t sva, vm_size_t size)
{
 pt_entry_t *pte;
 vm_offset_t va;
 int lvl;

 KASSERT((sva & L3_OFFSET) == 0,
    ("pmap_kremove_device: Invalid virtual address"));
 KASSERT((size & PAGE_MASK) == 0,
     ("pmap_kremove_device: Mapping is not page-sized"));

 va = sva;
 while (size != 0) {
  pte = pmap_pte(kernel_pmap, va, &lvl);
  KASSERT(pte != ((void*)0), ("Invalid page table, va: 0x%lx", va));
  KASSERT(lvl == 3,
      ("Invalid device pagetable level: %d != 3", lvl));
  pmap_clear(pte);

  va += PAGE_SIZE;
  size -= PAGE_SIZE;
 }
 pmap_invalidate_range(kernel_pmap, sva, va);
}
