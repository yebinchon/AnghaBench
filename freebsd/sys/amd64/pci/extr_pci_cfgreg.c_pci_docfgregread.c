
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ CFGMECH_PCIE ;
 scalar_t__ cfgmech ;
 int pcie_badslots ;
 int pcie_maxbus ;
 int pcie_minbus ;
 int pciereg_cfgread (int,int,int,int,int) ;
 int pcireg_cfgread (int,int,int,int,int) ;

__attribute__((used)) static uint32_t
pci_docfgregread(int bus, int slot, int func, int reg, int bytes)
{

 if (cfgmech == CFGMECH_PCIE &&
     (bus >= pcie_minbus && bus <= pcie_maxbus) &&
     (bus != 0 || !(1 << slot & pcie_badslots)))
  return (pciereg_cfgread(bus, slot, func, reg, bytes));
 else
  return (pcireg_cfgread(bus, slot, func, reg, bytes));
}
