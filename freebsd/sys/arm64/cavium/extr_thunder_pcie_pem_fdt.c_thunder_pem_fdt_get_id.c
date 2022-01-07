
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;
typedef int uint16_t ;
typedef int phandle_t ;
typedef enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef int device_t ;


 int PCI_ID_MSI ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_msimap (int ,int ,int *,uintptr_t*) ;
 int pci_get_rid (int ) ;
 int pcib_get_id (int ,int ,int,uintptr_t*) ;

__attribute__((used)) static int
thunder_pem_fdt_get_id(device_t dev, device_t child, enum pci_id_type type,
    uintptr_t *id)
{
 phandle_t node;
 int err;
 uint32_t rid;
 uint16_t pci_rid;

 if (type != PCI_ID_MSI)
  return (pcib_get_id(dev, child, type, id));

 node = ofw_bus_get_node(dev);
 pci_rid = pci_get_rid(child);

 err = ofw_bus_msimap(node, pci_rid, ((void*)0), &rid);
 if (err != 0)
  return (err);
 *id = rid;

 return (0);
}
