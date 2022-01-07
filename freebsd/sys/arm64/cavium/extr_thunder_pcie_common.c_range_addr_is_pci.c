
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct pcie_range {scalar_t__ pci_base; scalar_t__ size; } ;


 int MAX_RANGES_TUPLES ;

uint32_t
range_addr_is_pci(struct pcie_range *ranges, uint64_t addr, uint64_t size)
{
 struct pcie_range *r;
 int tuple;

 for (tuple = 0; tuple < MAX_RANGES_TUPLES; tuple++) {
  r = &ranges[tuple];
  if (addr >= r->pci_base &&
      addr < (r->pci_base + r->size) &&
      size < r->size) {

   return (1);
  }
 }


 return (0);
}
