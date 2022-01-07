
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pm_message {int dummy; } ;
struct pci_dev {int dev; TYPE_2__* pdrv; } ;
struct dev_pm_ops {int (* suspend ) (int *) ;int (* suspend_late ) (int *) ;} ;
typedef int device_t ;
struct TYPE_3__ {struct dev_pm_ops* pm; } ;
struct TYPE_4__ {int (* suspend ) (struct pci_dev*,struct pm_message) ;TYPE_1__ driver; } ;


 int curthread ;
 struct pci_dev* device_get_softc (int ) ;
 int linux_set_current (int ) ;
 int stub1 (struct pci_dev*,struct pm_message) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

__attribute__((used)) static int
linux_pci_suspend(device_t dev)
{
 const struct dev_pm_ops *pmops;
 struct pm_message pm = { };
 struct pci_dev *pdev;
 int error;

 error = 0;
 linux_set_current(curthread);
 pdev = device_get_softc(dev);
 pmops = pdev->pdrv->driver.pm;

 if (pdev->pdrv->suspend != ((void*)0))
  error = -pdev->pdrv->suspend(pdev, pm);
 else if (pmops != ((void*)0) && pmops->suspend != ((void*)0)) {
  error = -pmops->suspend(&pdev->dev);
  if (error == 0 && pmops->suspend_late != ((void*)0))
   error = -pmops->suspend_late(&pdev->dev);
 }
 return (error);
}
