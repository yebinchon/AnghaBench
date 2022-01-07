
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef int device_t ;


 int ENXIO ;
 int PCI_ID_MSI ;
 int PCI_RID_DOMAIN_SHIFT ;
 int pci_get_domain (int ) ;
 int pci_get_rid (int ) ;
 int pcib_get_id (int ,int ,int,uintptr_t*) ;

__attribute__((used)) static int
thunder_pem_get_id(device_t pci, device_t child, enum pci_id_type type,
    uintptr_t *id)
{
 int bsf;
 int pem;

 if (type != PCI_ID_MSI)
  return (pcib_get_id(pci, child, type, id));

 bsf = pci_get_rid(child);


 pem = pci_get_domain(child);






 if (pem < 3)
  *id = (0x1 << PCI_RID_DOMAIN_SHIFT) | bsf;
 else if (pem < 6)
  *id = (0x3 << PCI_RID_DOMAIN_SHIFT) | bsf;
 else if (pem < 9)
  *id = (0x9 << PCI_RID_DOMAIN_SHIFT) | bsf;
 else if (pem < 12)
  *id = (0xB << PCI_RID_DOMAIN_SHIFT) | bsf;
 else
  return (ENXIO);

 return (0);
}
