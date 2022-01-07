
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct pptdev {int dev; struct vm* vm; } ;


 int EBUSY ;
 int ENOENT ;
 int iommu_add_device (int ,int ) ;
 int pci_get_rid (int ) ;
 int pci_restore_state (int ) ;
 int pci_save_state (int ) ;
 struct pptdev* ppt_find (int,int,int) ;
 int ppt_pci_reset (int ) ;
 int vm_iommu_domain (struct vm*) ;

int
ppt_assign_device(struct vm *vm, int bus, int slot, int func)
{
 struct pptdev *ppt;

 ppt = ppt_find(bus, slot, func);
 if (ppt != ((void*)0)) {




  if (ppt->vm != ((void*)0) && ppt->vm != vm)
   return (EBUSY);

  pci_save_state(ppt->dev);
  ppt_pci_reset(ppt->dev);
  pci_restore_state(ppt->dev);
  ppt->vm = vm;
  iommu_add_device(vm_iommu_domain(vm), pci_get_rid(ppt->dev));
  return (0);
 }
 return (ENOENT);
}
