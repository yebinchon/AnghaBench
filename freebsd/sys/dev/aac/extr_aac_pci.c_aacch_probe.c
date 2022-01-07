
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
aacch_probe(device_t dev)
{

 if ((pci_get_vendor(dev) != 0x9005) ||
     (pci_get_device(dev) != 0x00c5))
  return (ENXIO);

 device_set_desc(dev, "AAC RAID Channel");
 return (-10);
}
