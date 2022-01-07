
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {int id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int clksel_reg; int instance; } ;


 int CLKCTRL_IDLEST_ENABLED ;
 int CLKCTRL_IDLEST_MASK ;
 int EINVAL ;
 int ENXIO ;
 int bus_read_4 (struct resource*,int ) ;
 struct omap4_clk_details* omap4_clk_details (int ) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static int
omap4_clk_generic_accessible(struct ti_clock_dev *clkdev)
{
 struct omap4_prcm_softc *sc;
 struct omap4_clk_details* clk_details;
 struct resource* clk_mem_res;
 uint32_t clksel;

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


 if ((clksel & CLKCTRL_IDLEST_MASK) != CLKCTRL_IDLEST_ENABLED)
  return (0);

 return (1);
}
