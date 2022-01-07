
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;


 scalar_t__ PAGE_SIZE ;
 int PDEBUG (int,int ) ;
 int pmap_kenter (scalar_t__,scalar_t__) ;
 int printf (char*,int,int,int,int) ;

vm_offset_t
pmap_map(vm_offset_t *virt, vm_offset_t start, vm_offset_t end, int prot)
{
 vm_offset_t sva = *virt;
 vm_offset_t va = sva;

 PDEBUG(1, printf("pmap_map: virt = %08x, start = %08x, end = %08x, "
     "prot = %d\n", (uint32_t) *virt, (uint32_t) start, (uint32_t) end,
     prot));

 while (start < end) {
  pmap_kenter(va, start);
  va += PAGE_SIZE;
  start += PAGE_SIZE;
 }
 *virt = va;
 return (sva);
}
