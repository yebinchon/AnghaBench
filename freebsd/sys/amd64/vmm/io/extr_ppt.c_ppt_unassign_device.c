
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct pptdev {struct vm* vm; int dev; } ;


 int EBUSY ;
 int ENOENT ;
 int iommu_remove_device (int ,int ) ;
 int pci_get_rid (int ) ;
 int pci_restore_state (int ) ;
 int pci_save_state (int ) ;
 struct pptdev* ppt_find (int,int,int) ;
 int ppt_pci_reset (int ) ;
 int ppt_teardown_msi (struct pptdev*) ;
 int ppt_teardown_msix (struct pptdev*) ;
 int ppt_unmap_mmio (struct vm*,struct pptdev*) ;
 int vm_iommu_domain (struct vm*) ;

int
ppt_unassign_device(struct vm *vm, int bus, int slot, int func)
{
 struct pptdev *ppt;

 ppt = ppt_find(bus, slot, func);
 if (ppt != ((void*)0)) {



  if (ppt->vm != vm)
   return (EBUSY);

  pci_save_state(ppt->dev);
  ppt_pci_reset(ppt->dev);
  pci_restore_state(ppt->dev);
  ppt_unmap_mmio(vm, ppt);
  ppt_teardown_msi(ppt);
  ppt_teardown_msix(ppt);
  iommu_remove_device(vm_iommu_domain(vm), pci_get_rid(ppt->dev));
  ppt->vm = ((void*)0);
  return (0);
 }
 return (ENOENT);
}
