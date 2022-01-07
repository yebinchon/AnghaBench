
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; int links; int bus; TYPE_1__* pdrv; } ;
typedef int device_t ;
struct TYPE_2__ {int (* remove ) (struct pci_dev*) ;} ;


 int M_DEVBUF ;
 int curthread ;
 struct pci_dev* device_get_softc (int ) ;
 int device_set_desc (int ,int *) ;
 int free (int ,int ) ;
 int linux_pdev_dma_uninit (struct pci_dev*) ;
 int linux_set_current (int ) ;
 int list_del (int *) ;
 int pci_lock ;
 int put_device (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static int
linux_pci_detach(device_t dev)
{
 struct pci_dev *pdev;

 linux_set_current(curthread);
 pdev = device_get_softc(dev);

 pdev->pdrv->remove(pdev);

 free(pdev->bus, M_DEVBUF);
 linux_pdev_dma_uninit(pdev);

 spin_lock(&pci_lock);
 list_del(&pdev->links);
 spin_unlock(&pci_lock);
 device_set_desc(dev, ((void*)0));
 put_device(&pdev->dev);

 return (0);
}
