
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int phandle_t ;


 int MV_PCIE_BASE ;
 int MV_PCIE_BASE_ARMADA38X ;
 int OF_finddevice (char*) ;
 int bus_space_read_4 (int ,int ,int) ;
 int fdtbus_bs_tag ;
 scalar_t__ ofw_bus_node_is_compatible (int,char*) ;

void
soc_id(uint32_t *dev, uint32_t *rev)
{
 uint64_t mv_pcie_base = MV_PCIE_BASE;
 phandle_t node;







 *dev = 0;
 *rev = 0;
 if ((node = OF_finddevice("/")) == -1)
  return;
 if (ofw_bus_node_is_compatible(node, "marvell,armada380"))
  mv_pcie_base = MV_PCIE_BASE_ARMADA38X;

 *dev = bus_space_read_4(fdtbus_bs_tag, mv_pcie_base, 0) >> 16;
 *rev = bus_space_read_4(fdtbus_bs_tag, mv_pcie_base, 8) & 0xff;
}
