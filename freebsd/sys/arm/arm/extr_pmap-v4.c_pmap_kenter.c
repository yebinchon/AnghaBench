
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int KENTER_CACHE ;
 int pmap_kenter_internal (int ,int ,int ) ;

void
pmap_kenter(vm_offset_t va, vm_paddr_t pa)
{
 pmap_kenter_internal(va, pa, KENTER_CACHE);
}
