
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int isdrm; } ;
typedef int * devclass_t ;


 int ENXIO ;
 int _linux_pci_register_driver (struct pci_driver*,int *) ;
 int * devclass_find (char*) ;

int
linux_pci_register_driver(struct pci_driver *pdrv)
{
 devclass_t dc;

 dc = devclass_find("pci");
 if (dc == ((void*)0))
  return (-ENXIO);
 pdrv->isdrm = 0;
 return (_linux_pci_register_driver(pdrv, dc));
}
