
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int device_t ;


 int ENXIO ;
 int THUNDER_PEM_DESC ;
 scalar_t__ THUNDER_PEM_DEVICE_ID ;
 scalar_t__ THUNDER_PEM_VENDOR_ID ;
 int device_set_desc_copy (int ,int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
thunder_pem_probe(device_t dev)
{
 uint16_t pci_vendor_id;
 uint16_t pci_device_id;

 pci_vendor_id = pci_get_vendor(dev);
 pci_device_id = pci_get_device(dev);

 if ((pci_vendor_id == THUNDER_PEM_VENDOR_ID) &&
     (pci_device_id == THUNDER_PEM_DEVICE_ID)) {
  device_set_desc_copy(dev, THUNDER_PEM_DESC);
  return (0);
 }

 return (ENXIO);
}
