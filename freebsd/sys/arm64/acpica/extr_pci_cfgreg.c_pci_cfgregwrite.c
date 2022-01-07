
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int panic (char*) ;

void
pci_cfgregwrite(int bus, int slot, int func, int reg, u_int32_t data, int bytes)
{


 panic("pci_cfgregwrite not implemented");
}
