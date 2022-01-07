
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {int id; } ;
struct resource {int dummy; } ;
struct omap4_prcm_softc {struct resource* sc_res; } ;


 int CLKCTRL_MODULEMODE_DISABLE ;
 int CLKCTRL_MODULEMODE_MASK ;
 int CM2_INSTANCE ;
 int EINVAL ;
 int ENXIO ;
 int L3INIT_CM2_OFFSET ;
 int bus_read_4 (struct resource*,int) ;
 int bus_write_4 (struct resource*,int,int) ;
 struct omap4_prcm_softc* omap4_prcm_get_instance_softc (int ) ;

__attribute__((used)) static int
omap4_clk_hsusbhost_deactivate(struct ti_clock_dev *clkdev)
{
 struct omap4_prcm_softc *sc;
 struct resource* clk_mem_res;
 uint32_t clksel_reg_off;
 uint32_t clksel;

 sc = omap4_prcm_get_instance_softc(CM2_INSTANCE);
 if (sc == ((void*)0))
  return ENXIO;

 switch (clkdev->id) {
 case 128:

  clk_mem_res = sc->sc_res;
  clksel_reg_off = L3INIT_CM2_OFFSET + 0x68;

  clksel = bus_read_4(clk_mem_res, clksel_reg_off);
  clksel &= ~CLKCTRL_MODULEMODE_MASK;
  clksel |= CLKCTRL_MODULEMODE_DISABLE;
  break;

 case 135:
 case 133:
 case 130:
 case 132:
 case 129:
 case 134:
 case 131:
  clk_mem_res = sc->sc_res;
  clksel_reg_off = L3INIT_CM2_OFFSET + 0x58;
  clksel = bus_read_4(clk_mem_res, clksel_reg_off);


  if (clkdev->id == 135) {
   clksel &= ~CLKCTRL_MODULEMODE_MASK;
   clksel |= CLKCTRL_MODULEMODE_DISABLE;

   clksel &= ~(0x1 << 15);
  }

  else if (clkdev->id == 132)
   clksel &= ~(0x1 << 8);
  else if (clkdev->id == 129)
   clksel &= ~(0x1 << 9);

  else if (clkdev->id == 134)
   clksel &= ~(0x5 << 11);
  else if (clkdev->id == 131)
   clksel &= ~(0x5 << 12);

  break;

 default:
  return (EINVAL);
 }

 bus_write_4(clk_mem_res, clksel_reg_off, clksel);

 return (0);
}
