
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef int device_t ;


 scalar_t__ OF_hasprop (int ,char*) ;
 int PCI_ID_MSI ;
 int PCI_RID_DOMAIN_SHIFT ;
 int generic_pcie_get_id (int ,int ,int,uintptr_t*) ;
 int ofw_bus_get_node (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_rid (int ) ;
 int pcib_get_id (int ,int ,int,uintptr_t*) ;

__attribute__((used)) static int
thunder_pcie_fdt_get_id(device_t pci, device_t child, enum pci_id_type type,
    uintptr_t *id)
{
 phandle_t node;
 int bsf;

 if (type != PCI_ID_MSI)
  return (pcib_get_id(pci, child, type, id));

 node = ofw_bus_get_node(pci);
 if (OF_hasprop(node, "msi-map"))
  return (generic_pcie_get_id(pci, child, type, id));

 bsf = pci_get_rid(child);
 *id = (pci_get_domain(child) << PCI_RID_DOMAIN_SHIFT) | bsf;

 return (0);
}
