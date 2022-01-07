
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int isdrm; char* name; } ;
typedef int * devclass_t ;


 int ENXIO ;
 int _linux_pci_register_driver (struct pci_driver*,int *) ;
 int * devclass_create (char*) ;

int
linux_pci_register_drm_driver(struct pci_driver *pdrv)
{
 devclass_t dc;

 dc = devclass_create("vgapci");
 if (dc == ((void*)0))
  return (-ENXIO);
 pdrv->isdrm = 1;
 pdrv->name = "drmn";
 return (_linux_pci_register_driver(pdrv, dc));
}
