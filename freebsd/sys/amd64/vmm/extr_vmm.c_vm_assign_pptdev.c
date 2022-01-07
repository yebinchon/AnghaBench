
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct vm {int * iommu; } ;


 int ENXIO ;
 int KASSERT (int ,char*) ;
 int * iommu_create_domain (int ) ;
 int ppt_assign_device (struct vm*,int,int,int) ;
 scalar_t__ ppt_assigned_devices (struct vm*) ;
 int vm_iommu_map (struct vm*) ;
 int vmm_sysmem_maxaddr (struct vm*) ;

int
vm_assign_pptdev(struct vm *vm, int bus, int slot, int func)
{
 int error;
 vm_paddr_t maxaddr;


 if (ppt_assigned_devices(vm) == 0) {
  KASSERT(vm->iommu == ((void*)0),
      ("vm_assign_pptdev: iommu must be NULL"));
  maxaddr = vmm_sysmem_maxaddr(vm);
  vm->iommu = iommu_create_domain(maxaddr);
  if (vm->iommu == ((void*)0))
   return (ENXIO);
  vm_iommu_map(vm);
 }

 error = ppt_assign_device(vm, bus, slot, func);
 return (error);
}
