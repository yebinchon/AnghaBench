
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ti_clock_dev {int dummy; } ;
struct omap4_prcm_softc {int sc_res; } ;


 int CM1_INSTANCE ;
 int CM_CLKSEL_DPLL_MPU ;
 int ENXIO ;
 int bus_read_4 (int ,int ) ;
 int omap4_clk_get_sysclk_freq (int *,int*) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static int
omap4_clk_get_arm_fclk_freq(struct ti_clock_dev *clkdev,
                            unsigned int *freq)
{
 uint32_t clksel;
 uint32_t pll_mult, pll_div;
 uint32_t mpuclk, sysclk;
 struct omap4_prcm_softc *sc;

 sc = omap4_prcm_get_instance_softc(CM1_INSTANCE);
 if (sc == ((void*)0))
  return ENXIO;




 clksel = bus_read_4(sc->sc_res, CM_CLKSEL_DPLL_MPU);

 pll_mult = ((clksel >> 8) & 0x7ff);
 pll_div = (clksel & 0x7f) + 1;



 omap4_clk_get_sysclk_freq(((void*)0), &sysclk);



 mpuclk = ((uint64_t)sysclk * pll_mult) / pll_div;


 if (freq)
  *freq = mpuclk;

 return (0);
}
