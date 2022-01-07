
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int platform_t ;
typedef int phandle_t ;
typedef int paddr ;
typedef int bus_addr_t ;


 int OF_finddevice (char*) ;
 scalar_t__ OF_getencprop (int,char*,int *,int) ;
 int SW_RST ;
 scalar_t__ bus_space_map (int ,int ,int,int ,int *) ;
 int bus_space_write_4 (int ,int ,int,int ) ;
 int fdtbus_bs_tag ;
 scalar_t__ src_swreset () ;

__attribute__((used)) static void
vf_cpu_reset(platform_t plat)
{
 phandle_t src;
 uint32_t paddr;
 bus_addr_t vaddr;

 if (src_swreset() == 0)
  goto end;

 src = OF_finddevice("src");
 if ((src != -1) && (OF_getencprop(src, "reg", &paddr, sizeof(paddr))) > 0) {
  if (bus_space_map(fdtbus_bs_tag, paddr, 0x10, 0, &vaddr) == 0) {
   bus_space_write_4(fdtbus_bs_tag, vaddr, 0x00, SW_RST);
  }
 }

end:
 while (1);
}
