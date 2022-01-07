
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int paddr ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int CTRL_SWWARMRSTREQ ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getencprop (int,char*,int *,int) ;
 scalar_t__ bus_space_map (int ,int ,int,int ,int *) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int fdtbus_bs_tag ;
 scalar_t__ rstmgr_warmreset (int ) ;

__attribute__((used)) static void
_socfpga_cpu_reset(bus_size_t reg)
{
 uint32_t paddr;
 bus_addr_t vaddr;
 phandle_t node;

 if (rstmgr_warmreset(reg) == 0)
  goto end;

 node = OF_finddevice("/soc/rstmgr");
 if (node == -1)
  goto end;

 if ((OF_getencprop(node, "reg", &paddr, sizeof(paddr))) > 0) {
  if (bus_space_map(fdtbus_bs_tag, paddr, 0x8, 0, &vaddr) == 0) {
   bus_space_write_4(fdtbus_bs_tag, vaddr,
       reg, CTRL_SWWARMRSTREQ);
  }
 }

end:
 while (1);
}
