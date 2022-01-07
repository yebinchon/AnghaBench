
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 scalar_t__ CFGMECH_PCIE ;
 scalar_t__ cfgmech ;
 int pcie_badslots ;
 int pcie_maxbus ;
 int pcie_minbus ;
 int pciereg_cfgwrite (int,int,int,int,int ,int) ;
 int pcireg_cfgwrite (int,int,int,int,int ,int) ;

void
pci_cfgregwrite(int bus, int slot, int func, int reg, u_int32_t data, int bytes)
{

 if (cfgmech == CFGMECH_PCIE &&
     (bus >= pcie_minbus && bus <= pcie_maxbus) &&
     (bus != 0 || !(1 << slot & pcie_badslots)))
  pciereg_cfgwrite(bus, slot, func, reg, data, bytes);
 else
  pcireg_cfgwrite(bus, slot, func, reg, data, bytes);
}
