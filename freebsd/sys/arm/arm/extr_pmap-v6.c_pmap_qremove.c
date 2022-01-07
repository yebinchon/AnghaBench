
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ PAGE_SIZE ;
 int pmap_kremove (scalar_t__) ;
 int tlb_flush_range (scalar_t__,scalar_t__) ;

void
pmap_qremove(vm_offset_t sva, int count)
{
 vm_offset_t va;

 va = sva;
 while (count-- > 0) {
  pmap_kremove(va);
  va += PAGE_SIZE;
 }
 tlb_flush_range(sva, va - sva);
}
