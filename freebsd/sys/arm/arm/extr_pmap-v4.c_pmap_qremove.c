
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;


 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_VM_PAGE (scalar_t__) ;
 int pmap_inv_page (int ) ;
 int pmap_kremove (int ) ;
 scalar_t__ vtophys (int ) ;

void
pmap_qremove(vm_offset_t va, int count)
{
 vm_paddr_t pa;
 int i;

 for (i = 0; i < count; i++) {
  pa = vtophys(va);
  if (pa) {
   pmap_inv_page(PHYS_TO_VM_PAGE(pa));
   pmap_kremove(va);
  }
  va += PAGE_SIZE;
 }
}
