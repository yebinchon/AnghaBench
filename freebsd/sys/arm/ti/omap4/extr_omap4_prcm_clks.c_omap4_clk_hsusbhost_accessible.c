
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {scalar_t__ id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;


 int CLKCTRL_IDLEST_ENABLED ;
 int CLKCTRL_IDLEST_MASK ;
 int CM2_INSTANCE ;
 int EINVAL ;
 int ENXIO ;
 int L3INIT_CM2_OFFSET ;
 scalar_t__ USBHSHOST_CLK ;
 scalar_t__ USBTLL_CLK ;
 int bus_read_4 (struct resource*,int) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static int
omap4_clk_hsusbhost_accessible(struct ti_clock_dev *clkdev)
{
 struct omap4_prcm_softc *sc;
 struct resource* clk_mem_res;
 uint32_t clksel_reg_off;
 uint32_t clksel;

 sc = omap4_prcm_get_instance_softc(CM2_INSTANCE);
 if (sc == ((void*)0))
  return ENXIO;

 if (clkdev->id == USBTLL_CLK) {

  clk_mem_res = sc->sc_res;
  clksel_reg_off = L3INIT_CM2_OFFSET + 0x68;
 }
 else if (clkdev->id == USBHSHOST_CLK) {

  clk_mem_res = sc->sc_res;
  clksel_reg_off = L3INIT_CM2_OFFSET + 0x58;
 }
 else {
  return (EINVAL);
 }

 clksel = bus_read_4(clk_mem_res, clksel_reg_off);


 if ((clksel & CLKCTRL_IDLEST_MASK) != CLKCTRL_IDLEST_ENABLED)
  return (0);

 return (1);
}
