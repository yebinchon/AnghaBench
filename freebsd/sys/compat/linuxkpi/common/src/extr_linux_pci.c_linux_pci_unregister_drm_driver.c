
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int bsddriver; int links; } ;
typedef int * devclass_t ;


 int Giant ;
 int devclass_delete_driver (int *,int *) ;
 int * devclass_find (char*) ;
 int list_del (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
linux_pci_unregister_drm_driver(struct pci_driver *pdrv)
{
 devclass_t bus;

 bus = devclass_find("vgapci");

 spin_lock(&pci_lock);
 list_del(&pdrv->links);
 spin_unlock(&pci_lock);
 mtx_lock(&Giant);
 if (bus != ((void*)0))
  devclass_delete_driver(bus, &pdrv->bsddriver);
 mtx_unlock(&Giant);
}
