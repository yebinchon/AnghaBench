
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_clock_dev {int id; } ;
struct am335x_prcm_softc {int dummy; } ;
struct am335x_clk_details {int clksel_reg; } ;
typedef int clk_src_t ;


 int DELAY (int) ;
 int ENXIO ;



 struct am335x_clk_details* am335x_clk_details (int ) ;
 struct am335x_prcm_softc* am335x_prcm_sc ;
 int prcm_read_4 (int ) ;
 int prcm_write_4 (int ,int) ;

__attribute__((used)) static int
am335x_clk_generic_set_source(struct ti_clock_dev *clkdev, clk_src_t clksrc)
{
 struct am335x_prcm_softc *sc = am335x_prcm_sc;
 struct am335x_clk_details* clk_details;
 uint32_t reg;

 if (sc == ((void*)0))
  return ENXIO;

 clk_details = am335x_clk_details(clkdev->id);

 if (clk_details == ((void*)0))
  return (ENXIO);

 switch (clksrc) {
  case 130:
   reg = 0;
   break;
  case 128:
   reg = 1;
   break;
  case 129:
   reg = 2;
   break;
  default:
   return (ENXIO);
 }

 prcm_write_4(clk_details->clksel_reg, reg);
 while ((prcm_read_4(clk_details->clksel_reg) & 0x3) != reg)
  DELAY(10);

 return (0);
}
