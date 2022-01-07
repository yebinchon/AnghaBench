
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int KASSERT (int,char*) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int kernel_pmap ;
 int pmap_invalidate_range (int ,scalar_t__,scalar_t__) ;
 int pmap_kremove (scalar_t__) ;

void
pmap_qremove(vm_offset_t sva, int count)
{
 vm_offset_t va;

 va = sva;
 while (count-- > 0) {
  KASSERT(va >= VM_MIN_KERNEL_ADDRESS, ("usermode va %lx", va));
  pmap_kremove(va);
  va += PAGE_SIZE;
 }
 pmap_invalidate_range(kernel_pmap, sva, va);
}
