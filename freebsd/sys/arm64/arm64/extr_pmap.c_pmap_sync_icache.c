
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;


 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_DMAP (scalar_t__) ;
 int VM_MIN_KERNEL_ADDRESS ;
 int cpu_icache_sync_range (int,int) ;
 int imin (scalar_t__,int) ;
 scalar_t__ pmap_extract (int ,int) ;

void
pmap_sync_icache(pmap_t pmap, vm_offset_t va, vm_size_t sz)
{

 if (va >= VM_MIN_KERNEL_ADDRESS) {
  cpu_icache_sync_range(va, sz);
 } else {
  u_int len, offset;
  vm_paddr_t pa;


  offset = va & PAGE_MASK;
  len = imin(PAGE_SIZE - offset, sz);

  while (sz != 0) {

   pa = pmap_extract(pmap, va);
   if (pa != 0)
    cpu_icache_sync_range(PHYS_TO_DMAP(pa), len);


   sz -= len;
   va += len;

   len = imin(PAGE_SIZE, sz);
  }
 }
}
