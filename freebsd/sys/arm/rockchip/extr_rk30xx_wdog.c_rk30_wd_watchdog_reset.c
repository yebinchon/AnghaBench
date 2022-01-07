
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_handle_t ;


 int RK30_WDT_BASE ;
 int RK30_WDT_PSIZE ;
 int WDOG_CTRL ;
 int WDOG_CTRL_EN ;
 int WDOG_CTRL_RSP_MODE ;
 int WDOG_CTRL_RST_PULSE ;
 int WDOG_TORR ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int fdtbus_bs_tag ;

void
rk30_wd_watchdog_reset(void)
{
 bus_space_handle_t bsh;

 bus_space_map(fdtbus_bs_tag, RK30_WDT_BASE, RK30_WDT_PSIZE, 0, &bsh);
 bus_space_write_4(fdtbus_bs_tag, bsh, WDOG_TORR, 0);
 bus_space_write_4(fdtbus_bs_tag, bsh, WDOG_CTRL,
     WDOG_CTRL_EN | WDOG_CTRL_RSP_MODE | WDOG_CTRL_RST_PULSE);

 while (1);
}
