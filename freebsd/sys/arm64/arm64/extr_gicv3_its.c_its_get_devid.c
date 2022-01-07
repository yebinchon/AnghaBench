
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;
typedef int device_t ;


 int PCI_ID_MSI ;
 int panic (char*) ;
 scalar_t__ pci_get_id (int ,int ,uintptr_t*) ;

__attribute__((used)) static uint32_t
its_get_devid(device_t pci_dev)
{
 uintptr_t id;

 if (pci_get_id(pci_dev, PCI_ID_MSI, &id) != 0)
  panic("its_get_devid: Unable to get the MSI DeviceID");

 return (id);
}
