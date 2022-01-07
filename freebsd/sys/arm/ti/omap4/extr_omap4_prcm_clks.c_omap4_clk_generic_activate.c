
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {int id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int clksel_reg; int enable_mode; int instance; } ;


 int CLKCTRL_IDLEST_ENABLED ;
 int CLKCTRL_IDLEST_MASK ;
 int CLKCTRL_MODULEMODE_MASK ;
 int DELAY (int) ;
 int EINVAL ;
 int ENXIO ;
 int ETIMEDOUT ;
 unsigned int MAX_MODULE_ENABLE_WAIT ;
 int bus_read_4 (struct resource*,int) ;
 int bus_write_4 (struct resource*,int,int) ;
 struct omap4_clk_details* omap4_clk_details (int) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;
 int printf (char*,int,...) ;

__attribute__((used)) static int
omap4_clk_generic_activate(struct ti_clock_dev *clkdev)
{
 struct omap4_prcm_softc *sc;
 struct omap4_clk_details* clk_details;
 struct resource* clk_mem_res;
 uint32_t clksel;
 unsigned int i;
 clk_details = omap4_clk_details(clkdev->id);

 if (clk_details == ((void*)0))
  return (ENXIO);

 sc = omap4_prcm_get_instance_softc(clk_details->instance);
 if (sc == ((void*)0))
  return ENXIO;

 clk_mem_res = sc->sc_res;

 if (clk_mem_res == ((void*)0))
  return (EINVAL);




 clksel = bus_read_4(clk_mem_res, clk_details->clksel_reg);
 clksel &= ~CLKCTRL_MODULEMODE_MASK;
 clksel |= clk_details->enable_mode;
 bus_write_4(clk_mem_res, clk_details->clksel_reg, clksel);






 for (i = 0; i < MAX_MODULE_ENABLE_WAIT; i++) {
  clksel = bus_read_4(clk_mem_res, clk_details->clksel_reg);
  if ((clksel & CLKCTRL_IDLEST_MASK) == CLKCTRL_IDLEST_ENABLED)
   break;
  DELAY(10);
 }


 if ((clksel & CLKCTRL_IDLEST_MASK) != CLKCTRL_IDLEST_ENABLED) {
  printf("Error: failed to enable module with clock %d\n", clkdev->id);
  printf("Error: 0x%08x => 0x%08x\n", clk_details->clksel_reg, clksel);
  return (ETIMEDOUT);
 }

 return (0);
}
