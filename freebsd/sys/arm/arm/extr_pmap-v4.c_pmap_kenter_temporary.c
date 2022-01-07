
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;


 int PAGE_SIZE ;
 scalar_t__ crashdumpmap ;
 int pmap_kenter (scalar_t__,int ) ;

void *
pmap_kenter_temporary(vm_paddr_t pa, int i)
{
 vm_offset_t va;

 va = (vm_offset_t)crashdumpmap + (i * PAGE_SIZE);
 pmap_kenter(va, pa);
 return ((void *)crashdumpmap);
}
