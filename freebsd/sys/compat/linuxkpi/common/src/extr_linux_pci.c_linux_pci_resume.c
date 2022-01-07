
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; TYPE_2__* pdrv; } ;
struct dev_pm_ops {int (* resume ) (int *) ;int (* resume_early ) (int *) ;} ;
typedef int device_t ;
struct TYPE_3__ {struct dev_pm_ops* pm; } ;
struct TYPE_4__ {int (* resume ) (struct pci_dev*) ;TYPE_1__ driver; } ;


 int curthread ;
 struct pci_dev* device_get_softc (int ) ;
 int linux_set_current (int ) ;
 int stub1 (struct pci_dev*) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

__attribute__((used)) static int
linux_pci_resume(device_t dev)
{
 const struct dev_pm_ops *pmops;
 struct pci_dev *pdev;
 int error;

 error = 0;
 linux_set_current(curthread);
 pdev = device_get_softc(dev);
 pmops = pdev->pdrv->driver.pm;

 if (pdev->pdrv->resume != ((void*)0))
  error = -pdev->pdrv->resume(pdev);
 else if (pmops != ((void*)0) && pmops->resume != ((void*)0)) {
  if (pmops->resume_early != ((void*)0))
   error = -pmops->resume_early(&pdev->dev);
  if (error == 0 && pmops->resume != ((void*)0))
   error = -pmops->resume(&pdev->dev);
 }
 return (error);
}
