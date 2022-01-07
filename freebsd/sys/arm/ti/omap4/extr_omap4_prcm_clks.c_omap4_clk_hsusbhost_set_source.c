
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {scalar_t__ id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;
typedef scalar_t__ clk_src_t ;


 int CM2_INSTANCE ;
 int EINVAL ;
 int ENXIO ;
 scalar_t__ EXT_CLK ;
 int L3INIT_CM2_OFFSET ;
 scalar_t__ USBP1_PHY_CLK ;
 scalar_t__ USBP2_PHY_CLK ;
 int bus_read_4 (struct resource*,int) ;
 int bus_write_4 (struct resource*,int,int) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static int
omap4_clk_hsusbhost_set_source(struct ti_clock_dev *clkdev,
                               clk_src_t clksrc)
{
 struct omap4_prcm_softc *sc;
 struct resource* clk_mem_res;
 uint32_t clksel_reg_off;
 uint32_t clksel;
 unsigned int bit;

 sc = omap4_prcm_get_instance_softc(CM2_INSTANCE);
 if (sc == ((void*)0))
  return ENXIO;

 if (clkdev->id == USBP1_PHY_CLK)
  bit = 24;
 else if (clkdev->id != USBP2_PHY_CLK)
  bit = 25;
 else
  return (EINVAL);


 clk_mem_res = sc->sc_res;
 clksel_reg_off = L3INIT_CM2_OFFSET + 0x58;
 clksel = bus_read_4(clk_mem_res, clksel_reg_off);


 if (clksrc == EXT_CLK)
  clksel |= (0x1 << bit);
 else
  clksel &= ~(0x1 << bit);

 bus_write_4(clk_mem_res, clksel_reg_off, clksel);

 return (0);
}
