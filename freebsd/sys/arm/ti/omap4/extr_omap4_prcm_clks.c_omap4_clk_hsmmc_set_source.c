
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {scalar_t__ id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int clksel_reg; int instance; } ;
typedef scalar_t__ clk_src_t ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ F48MHZ_CLK ;
 scalar_t__ F64MHZ_CLK ;
 scalar_t__ F96MHZ_CLK ;
 scalar_t__ MMC3_CLK ;
 scalar_t__ MMC4_CLK ;
 scalar_t__ MMC5_CLK ;
 int bus_read_4 (struct resource*,int ) ;
 int bus_write_4 (struct resource*,int ,int) ;
 struct omap4_clk_details* omap4_clk_details (scalar_t__) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static int
omap4_clk_hsmmc_set_source(struct ti_clock_dev *clkdev,
                           clk_src_t clksrc)
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


 if ((clkdev->id == MMC3_CLK) || (clkdev->id == MMC4_CLK) ||
     (clkdev->id == MMC5_CLK)) {
  if (clksrc != F48MHZ_CLK)
   return (EINVAL);
  return 0;
 }


 clksel = bus_read_4(clk_mem_res, clk_details->clksel_reg);


 if (clksrc == F64MHZ_CLK)
  clksel &= ~(0x1UL << 24);
 else if (clksrc == F96MHZ_CLK)
  clksel |= (0x1UL << 24);
 else
  return (EINVAL);

 bus_write_4(clk_mem_res, clk_details->clksel_reg, clksel);

 return (0);
}
