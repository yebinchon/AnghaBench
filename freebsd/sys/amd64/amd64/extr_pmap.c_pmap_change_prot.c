
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;


 int EINVAL ;
 int MAPDEV_ASSERTVALID ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int kernel_pmap ;
 int pmap_change_props_locked (scalar_t__,int ,int ,int,int ) ;

int
pmap_change_prot(vm_offset_t va, vm_size_t size, vm_prot_t prot)
{
 int error;


 if (va < VM_MIN_KERNEL_ADDRESS)
  return (EINVAL);

 PMAP_LOCK(kernel_pmap);
 error = pmap_change_props_locked(va, size, prot, -1,
     MAPDEV_ASSERTVALID);
 PMAP_UNLOCK(kernel_pmap);
 return (error);
}
