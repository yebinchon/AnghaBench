
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 scalar_t__ ppt_assigned_devices (struct vm*) ;
 int ppt_unassign_device (struct vm*,int,int,int) ;
 int vm_iommu_unmap (struct vm*) ;

int
vm_unassign_pptdev(struct vm *vm, int bus, int slot, int func)
{
 int error;

 error = ppt_unassign_device(vm, bus, slot, func);
 if (error)
  return (error);

 if (ppt_assigned_devices(vm) == 0)
  vm_iommu_unmap(vm);

 return (0);
}
