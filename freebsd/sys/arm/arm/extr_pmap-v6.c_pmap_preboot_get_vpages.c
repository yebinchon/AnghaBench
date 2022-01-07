
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int u_int ;


 int PAGE_SIZE ;
 int bzero (void*,int) ;
 int pmap_preboot_get_pages (int) ;
 int pmap_preboot_map_pages (int ,int,int) ;
 int virtual_avail ;

vm_offset_t
pmap_preboot_get_vpages(u_int num)
{
 vm_paddr_t pa;
 vm_offset_t va;


 pa = pmap_preboot_get_pages(num);


 va = virtual_avail;
 virtual_avail += num * PAGE_SIZE;


 pmap_preboot_map_pages(pa, va, num);
 bzero((void *)va, num * PAGE_SIZE);

 return (va);
}
