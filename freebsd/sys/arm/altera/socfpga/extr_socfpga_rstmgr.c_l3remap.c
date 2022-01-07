
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rstmgr_softc {int dev; } ;
typedef int phandle_t ;
typedef int paddr ;
typedef int bus_addr_t ;


 int L3REGS_REMAP ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getencprop (int,char*,int *,int) ;
 int REMAP_MPUZERO ;
 scalar_t__ bus_space_map (int ,int ,int,int ,int *) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int device_printf (int ,char*) ;
 int fdtbus_bs_tag ;

__attribute__((used)) static int
l3remap(struct rstmgr_softc *sc, int remap, int enable)
{
 uint32_t paddr;
 bus_addr_t vaddr;
 phandle_t node;
 int reg;






 reg = REMAP_MPUZERO;
 if (enable)
  reg |= (remap);
 else
  reg &= ~(remap);

 node = OF_finddevice("l3regs");
 if (node == -1) {
  device_printf(sc->dev, "Can't find l3regs node\n");
  return (1);
 }

 if ((OF_getencprop(node, "reg", &paddr, sizeof(paddr))) > 0) {
  if (bus_space_map(fdtbus_bs_tag, paddr, 0x4, 0, &vaddr) == 0) {
   bus_space_write_4(fdtbus_bs_tag, vaddr,
       L3REGS_REMAP, reg);
   return (0);
  }
 }

 return (1);
}
