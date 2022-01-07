
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pptdev {int * vm; } ;
typedef int device_t ;


 int EBUSY ;
 int TAILQ_REMOVE (int *,struct pptdev*,int ) ;
 struct pptdev* device_get_softc (int ) ;
 int iommu_add_device (int ,int ) ;
 int iommu_host_domain () ;
 int next ;
 int num_pptdevs ;
 int pci_disable_busmaster (int ) ;
 int pci_get_rid (int ) ;
 int pptdev_list ;

__attribute__((used)) static int
ppt_detach(device_t dev)
{
 struct pptdev *ppt;

 ppt = device_get_softc(dev);

 if (ppt->vm != ((void*)0))
  return (EBUSY);
 num_pptdevs--;
 TAILQ_REMOVE(&pptdev_list, ppt, next);
 pci_disable_busmaster(dev);
 iommu_add_device(iommu_host_domain(), pci_get_rid(dev));

 return (0);
}
