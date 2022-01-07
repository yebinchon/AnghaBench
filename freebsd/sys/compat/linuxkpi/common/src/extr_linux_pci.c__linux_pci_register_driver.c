
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int methods; int name; } ;
struct pci_driver {int bsdclass; TYPE_1__ bsddriver; int name; int links; } ;
struct pci_dev {int dummy; } ;
typedef int devclass_t ;


 int BUS_PASS_DEFAULT ;
 int Giant ;
 int curthread ;
 int devclass_add_driver (int ,TYPE_1__*,int ,int *) ;
 int linux_set_current (int ) ;
 int list_add (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_drivers ;
 int pci_lock ;
 int pci_methods ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
_linux_pci_register_driver(struct pci_driver *pdrv, devclass_t dc)
{
 int error;

 linux_set_current(curthread);
 spin_lock(&pci_lock);
 list_add(&pdrv->links, &pci_drivers);
 spin_unlock(&pci_lock);
 pdrv->bsddriver.name = pdrv->name;
 pdrv->bsddriver.methods = pci_methods;
 pdrv->bsddriver.size = sizeof(struct pci_dev);

 mtx_lock(&Giant);
 error = devclass_add_driver(dc, &pdrv->bsddriver,
     BUS_PASS_DEFAULT, &pdrv->bsdclass);
 mtx_unlock(&Giant);
 return (-error);
}
