
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int DEVICE_MEMORY ;
 int pmap_kenter (int ,int ,int ,int ) ;

void
pmap_kenter_device(vm_offset_t sva, vm_size_t size, vm_paddr_t pa)
{

 pmap_kenter(sva, size, pa, DEVICE_MEMORY);
}
