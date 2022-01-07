
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;
typedef int bus_space_handle_t ;


 int CPUCFG_BASE ;
 int CPUCFG_SIZE ;
 int CPUXCFG_BASE ;
 int CPUXCFG_SIZE ;
 int PRCM_BASE ;
 int PRCM_SIZE ;
 int aw_mc_mp_start_ap (int ,int ,int ) ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_unmap (int ,int ,int ) ;
 int dsb () ;
 int fdtbus_bs_tag ;
 int panic (char*) ;
 int sev () ;

void
a83t_mp_start_ap(platform_t plat)
{
 bus_space_handle_t cpuscfg, cpuxcfg, prcm;

 if (bus_space_map(fdtbus_bs_tag, CPUCFG_BASE, CPUCFG_SIZE,
     0, &cpuscfg) != 0)
  panic("Couldn't map the CPUCFG\n");
 if (bus_space_map(fdtbus_bs_tag, CPUXCFG_BASE, CPUXCFG_SIZE,
     0, &cpuxcfg) != 0)
  panic("Couldn't map the CPUXCFG\n");
 if (bus_space_map(fdtbus_bs_tag, PRCM_BASE, PRCM_SIZE, 0,
     &prcm) != 0)
  panic("Couldn't map the PRCM\n");

 aw_mc_mp_start_ap(cpuscfg, cpuxcfg, prcm);
 dsb();
 sev();
 bus_space_unmap(fdtbus_bs_tag, cpuxcfg, CPUXCFG_SIZE);
 bus_space_unmap(fdtbus_bs_tag, cpuscfg, CPUCFG_SIZE);
 bus_space_unmap(fdtbus_bs_tag, prcm, PRCM_SIZE);
}
