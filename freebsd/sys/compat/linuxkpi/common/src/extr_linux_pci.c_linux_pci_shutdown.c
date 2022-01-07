
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* pdrv; } ;
typedef int device_t ;
struct TYPE_2__ {int (* shutdown ) (struct pci_dev*) ;} ;


 int curthread ;
 struct pci_dev* device_get_softc (int ) ;
 int linux_set_current (int ) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static int
linux_pci_shutdown(device_t dev)
{
 struct pci_dev *pdev;

 linux_set_current(curthread);
 pdev = device_get_softc(dev);
 if (pdev->pdrv->shutdown != ((void*)0))
  pdev->pdrv->shutdown(pdev);
 return (0);
}
