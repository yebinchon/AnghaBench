
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int CFGMECH_PCIE ;
 int PCI_SLOTMAX ;
 scalar_t__ bootverbose ;
 int cfgmech ;
 int mcfg_enable ;
 scalar_t__ pci_cfgregopen () ;
 int pcie_badslots ;
 scalar_t__ pcie_base ;
 scalar_t__ pcie_maxbus ;
 scalar_t__ pcie_minbus ;
 int pciereg_cfgread (int ,int,int ,int ,int) ;
 int pcireg_cfgread (int ,int,int ,int ,int) ;
 scalar_t__ pmap_mapdev_pciecfg (int ,scalar_t__) ;
 int printf (char*,int ) ;

int
pcie_cfgregopen(uint64_t base, uint8_t minbus, uint8_t maxbus)
{
 uint32_t val1, val2;
 int slot;

 if (!mcfg_enable)
  return (0);

 if (minbus != 0)
  return (0);

 if (bootverbose)
  printf("PCIe: Memory Mapped configuration base @ 0x%lx\n",
      base);


 pcie_base = (vm_offset_t)pmap_mapdev_pciecfg(base, (maxbus + 1) << 20);
 pcie_minbus = minbus;
 pcie_maxbus = maxbus;
 cfgmech = CFGMECH_PCIE;







 if (pci_cfgregopen() != 0) {
  for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
   val1 = pcireg_cfgread(0, slot, 0, 0, 4);
   if (val1 == 0xffffffff)
    continue;

   val2 = pciereg_cfgread(0, slot, 0, 0, 4);
   if (val2 != val1)
    pcie_badslots |= (1 << slot);
  }
 }

 return (1);
}
