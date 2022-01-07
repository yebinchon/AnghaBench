
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pptdev {int dev; } ;
typedef int device_t ;


 int TAILQ_INSERT_TAIL (int *,struct pptdev*,int ) ;
 scalar_t__ bootverbose ;
 struct pptdev* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iommu_host_domain () ;
 int iommu_remove_device (int ,int ) ;
 int next ;
 int num_pptdevs ;
 int pci_get_rid (int ) ;
 int pptdev_list ;

__attribute__((used)) static int
ppt_attach(device_t dev)
{
 struct pptdev *ppt;

 ppt = device_get_softc(dev);

 iommu_remove_device(iommu_host_domain(), pci_get_rid(dev));
 num_pptdevs++;
 TAILQ_INSERT_TAIL(&pptdev_list, ppt, next);
 ppt->dev = dev;

 if (bootverbose)
  device_printf(dev, "attached\n");

 return (0);
}
