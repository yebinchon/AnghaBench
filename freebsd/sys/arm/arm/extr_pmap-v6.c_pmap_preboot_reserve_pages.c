
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_int ;
typedef int pt2_entry_t ;


 scalar_t__ PAGE_SIZE ;
 int * pmap_preboot_vtopte2 (scalar_t__) ;
 int pte2_store (int *,int ) ;
 scalar_t__ virtual_avail ;

vm_offset_t
pmap_preboot_reserve_pages(u_int num)
{
 u_int i;
 vm_offset_t start, va;
 pt2_entry_t *pte2p;


 start = va = virtual_avail;
 virtual_avail += num * PAGE_SIZE;


 for (i = 0; i < num; i++) {
  pte2p = pmap_preboot_vtopte2(va);
  pte2_store(pte2p, 0);
  va += PAGE_SIZE;
 }

 return (start);
}
