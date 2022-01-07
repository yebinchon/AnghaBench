
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int name; int bsddriver; } ;
struct pci_device_id {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int * device_get_driver (int ) ;
 int device_set_desc (int ,int ) ;
 struct pci_driver* linux_pci_find (int ,struct pci_device_id const**) ;

__attribute__((used)) static int
linux_pci_probe(device_t dev)
{
 const struct pci_device_id *id;
 struct pci_driver *pdrv;

 if ((pdrv = linux_pci_find(dev, &id)) == ((void*)0))
  return (ENXIO);
 if (device_get_driver(dev) != &pdrv->bsddriver)
  return (ENXIO);
 device_set_desc(dev, pdrv->name);
 return (0);
}
