
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clock_dev {int id; } ;
struct am335x_prcm_softc {int dummy; } ;
struct am335x_clk_details {int clkctrl_reg; } ;


 int DELAY (int) ;
 int ENXIO ;
 struct am335x_clk_details* am335x_clk_details (int ) ;
 struct am335x_prcm_softc* am335x_prcm_sc ;
 int prcm_read_4 (int ) ;
 int prcm_write_4 (int ,int ) ;

__attribute__((used)) static int
am335x_clk_generic_deactivate(struct ti_clock_dev *clkdev)
{
 struct am335x_prcm_softc *sc = am335x_prcm_sc;
 struct am335x_clk_details* clk_details;

 if (sc == ((void*)0))
  return ENXIO;

 clk_details = am335x_clk_details(clkdev->id);

 if (clk_details == ((void*)0))
  return (ENXIO);


 prcm_write_4(clk_details->clkctrl_reg, 0);
 while ((prcm_read_4(clk_details->clkctrl_reg) & 0x3) != 0)
  DELAY(10);

 return (0);
}
