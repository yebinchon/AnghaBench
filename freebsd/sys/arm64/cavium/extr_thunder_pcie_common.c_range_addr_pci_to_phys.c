
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pcie_range {scalar_t__ pci_base; scalar_t__ size; scalar_t__ phys_base; } ;


 int MAX_RANGES_TUPLES ;

uint64_t
range_addr_pci_to_phys(struct pcie_range *ranges, uint64_t pci_addr)
{
 struct pcie_range *r;
 uint64_t offset;
 int tuple;


 for (tuple = 0; tuple < MAX_RANGES_TUPLES; tuple++) {
  r = &ranges[tuple];
  if (pci_addr >= r->pci_base &&
      pci_addr < (r->pci_base + r->size)) {



   offset = pci_addr - r->pci_base;
   return (r->phys_base + offset);
  }
 }
 return (0);
}
