
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdrtype; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int PCIM_HDRTYPE ;
 int PCIM_HDRTYPE_NORMAL ;
 scalar_t__ device_get_ivars (int ) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ vmm_is_pptdev (int,int,int) ;

__attribute__((used)) static int
ppt_probe(device_t dev)
{
 int bus, slot, func;
 struct pci_devinfo *dinfo;

 dinfo = (struct pci_devinfo *)device_get_ivars(dev);

 bus = pci_get_bus(dev);
 slot = pci_get_slot(dev);
 func = pci_get_function(dev);






 if ((dinfo->cfg.hdrtype & PCIM_HDRTYPE) != PCIM_HDRTYPE_NORMAL)
  return (ENXIO);
 else if (vmm_is_pptdev(bus, slot, func))
  return (0);
 else






  return (BUS_PROBE_NOWILDCARD);
}
