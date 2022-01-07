
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef scalar_t__ u_int ;
typedef int pt2_entry_t ;


 scalar_t__ PAGE_SIZE ;
 int PTE2_KRW (int ) ;
 int * pmap_preboot_vtopte2 (int ) ;
 int pte2_store (int *,int ) ;

void
pmap_preboot_map_pages(vm_paddr_t pa, vm_offset_t va, u_int num)
{
 u_int i;
 pt2_entry_t *pte2p;


 for (i = 0; i < num; i++) {
  pte2p = pmap_preboot_vtopte2(va);
  pte2_store(pte2p, PTE2_KRW(pa));
  va += PAGE_SIZE;
  pa += PAGE_SIZE;
 }
}
