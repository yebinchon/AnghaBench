
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bus_space_handle_t ;


 scalar_t__ CONTROL_CORE_PAD0_GPMC_WAIT1 ;
 scalar_t__ CONTROL_CORE_PAD1_KPD_COL2 ;
 scalar_t__ CONTROL_WKUP_PAD0_FREF_CLK3_OUT ;
 int DELAY (int) ;
 scalar_t__ GPIO1_CLEARDATAOUT ;
 scalar_t__ GPIO1_OE ;
 scalar_t__ GPIO1_SETDATAOUT ;
 scalar_t__ GPIO2_CLEARDATAOUT ;
 scalar_t__ GPIO2_OE ;
 scalar_t__ GPIO2_SETDATAOUT ;
 int OMAP44XX_GPIO1_HWBASE ;
 int OMAP44XX_GPIO1_SIZE ;
 int OMAP44XX_GPIO2_HWBASE ;
 int OMAP44XX_GPIO2_SIZE ;
 int OMAP44XX_SCM_PADCONF_HWBASE ;
 int OMAP44XX_SCM_PADCONF_SIZE ;
 int OMAP44XX_SCRM_HWBASE ;
 int OMAP44XX_SCRM_SIZE ;
 unsigned long REG_READ32 (scalar_t__) ;
 int REG_WRITE16 (scalar_t__,int) ;
 int REG_WRITE32 (scalar_t__,unsigned long) ;
 scalar_t__ SCRM_AUXCLK3 ;
 scalar_t__ bus_space_map (int ,int ,int ,int ,scalar_t__*) ;
 int bus_space_unmap (int ,scalar_t__,int ) ;
 int fdtbus_bs_tag ;
 int panic (char*) ;

void
pandaboard_usb_hub_init(void)
{
 bus_space_handle_t scrm_addr, gpio1_addr, gpio2_addr, scm_addr;

 if (bus_space_map(fdtbus_bs_tag, OMAP44XX_SCRM_HWBASE,
     OMAP44XX_SCRM_SIZE, 0, &scrm_addr) != 0)
  panic("Couldn't map SCRM registers");
 if (bus_space_map(fdtbus_bs_tag, OMAP44XX_GPIO1_HWBASE,
     OMAP44XX_GPIO1_SIZE, 0, &gpio1_addr) != 0)
  panic("Couldn't map GPIO1 registers");
 if (bus_space_map(fdtbus_bs_tag, OMAP44XX_GPIO2_HWBASE,
     OMAP44XX_GPIO2_SIZE, 0, &gpio2_addr) != 0)
  panic("Couldn't map GPIO2 registers");
 if (bus_space_map(fdtbus_bs_tag, OMAP44XX_SCM_PADCONF_HWBASE,
     OMAP44XX_SCM_PADCONF_SIZE, 0, &scm_addr) != 0)
  panic("Couldn't map SCM Padconf registers");







 REG_WRITE32(scrm_addr + SCRM_AUXCLK3, (1 << 16) |
                           (0 << 1) |
                           (1 << 8));





 REG_WRITE16(scm_addr + CONTROL_WKUP_PAD0_FREF_CLK3_OUT, 0x0000);



 REG_WRITE32(gpio1_addr + GPIO1_OE, REG_READ32(gpio1_addr +
     GPIO1_OE) & ~(1UL << 1));
 REG_WRITE32(gpio1_addr + GPIO1_CLEARDATAOUT, (1UL << 1));
 REG_WRITE16(scm_addr + CONTROL_CORE_PAD1_KPD_COL2, 0x0003);



 REG_WRITE32(gpio2_addr + GPIO2_OE,
     REG_READ32(gpio2_addr + GPIO2_OE) & ~(1UL << 30));
 REG_WRITE32(gpio2_addr + GPIO2_CLEARDATAOUT, (1UL << 30));
 REG_WRITE16(scm_addr + CONTROL_CORE_PAD0_GPMC_WAIT1, 0x0003);
 DELAY(10);
 REG_WRITE32(gpio2_addr + GPIO2_SETDATAOUT, (1UL << 30));



 REG_WRITE32(gpio1_addr + GPIO1_SETDATAOUT, (1UL << 1));
 bus_space_unmap(fdtbus_bs_tag, scrm_addr, OMAP44XX_SCRM_SIZE);
 bus_space_unmap(fdtbus_bs_tag, gpio1_addr, OMAP44XX_GPIO1_SIZE);
 bus_space_unmap(fdtbus_bs_tag, gpio2_addr, OMAP44XX_GPIO2_SIZE);
 bus_space_unmap(fdtbus_bs_tag, scm_addr, OMAP44XX_SCM_PADCONF_SIZE);
}
