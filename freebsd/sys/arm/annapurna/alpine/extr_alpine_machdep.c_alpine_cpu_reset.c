
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int platform_t ;
typedef int bus_addr_t ;


 int INT_ENABLE ;
 int LOAD_MIN ;
 int RESET_ENABLE ;
 int UNLOCK ;
 int WDTCONTROL ;
 int WDTLOAD ;
 int WDTLOCK ;
 scalar_t__ al_devmap_pa ;
 int alpine_get_wdt_base (scalar_t__*,scalar_t__*) ;
 int bus_space_map (int ,scalar_t__,scalar_t__,int ,int *) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int fdtbus_bs_tag ;
 int printf (char*) ;

__attribute__((used)) static void
alpine_cpu_reset(platform_t plat)
{
 uint32_t wdbase, wdsize;
 bus_addr_t wdbaddr;
 int ret;

 ret = alpine_get_wdt_base(&wdbase, &wdsize);
 if (ret) {
  printf("Unable to get WDT base, do power down manually...");
  goto infinite;
 }

 ret = bus_space_map(fdtbus_bs_tag, al_devmap_pa + wdbase,
     wdsize, 0, &wdbaddr);
 if (ret) {
  printf("Unable to map WDT base, do power down manually...");
  goto infinite;
 }

 bus_space_write_4(fdtbus_bs_tag, wdbaddr, WDTLOCK, UNLOCK);
 bus_space_write_4(fdtbus_bs_tag, wdbaddr, WDTLOAD, LOAD_MIN);
 bus_space_write_4(fdtbus_bs_tag, wdbaddr, WDTCONTROL,
     INT_ENABLE | RESET_ENABLE);

infinite:
 while (1) {}
}
