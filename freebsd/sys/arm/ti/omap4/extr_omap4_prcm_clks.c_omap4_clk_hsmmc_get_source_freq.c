
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {int id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
struct omap4_clk_details {int clksel_reg; int instance; } ;


 int EINVAL ;
 int ENXIO ;
 unsigned int FREQ_48MHZ ;
 unsigned int FREQ_64MHZ ;
 unsigned int FREQ_96MHZ ;





 int bus_read_4 (struct resource*,int ) ;
 struct omap4_clk_details* omap4_clk_details (int) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static int
omap4_clk_hsmmc_get_source_freq(struct ti_clock_dev *clkdev,
                                unsigned int *freq
                                )
{
 struct omap4_prcm_softc *sc;
 struct omap4_clk_details* clk_details;
 struct resource* clk_mem_res;
 uint32_t clksel;
 unsigned int src_freq;

 clk_details = omap4_clk_details(clkdev->id);

 if (clk_details == ((void*)0))
  return (ENXIO);

 sc = omap4_prcm_get_instance_softc(clk_details->instance);
 if (sc == ((void*)0))
  return ENXIO;

 clk_mem_res = sc->sc_res;

 if (clk_mem_res == ((void*)0))
  return (EINVAL);

 switch (clkdev->id) {
 case 132:
 case 131:

  clksel = bus_read_4(clk_mem_res, clk_details->clksel_reg);
  if (clksel & (0x1UL << 24))
   src_freq = FREQ_96MHZ;
  else
   src_freq = FREQ_64MHZ;
  break;
 case 130:
 case 129:
 case 128:
  src_freq = FREQ_48MHZ;
  break;
 default:
  return (EINVAL);
 }


 if (freq)
  *freq = src_freq;

 return (0);
}
