
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clock_dev {int dummy; } ;
struct am335x_prcm_softc {int dummy; } ;


 int CLKSEL_PRUSS_OCP_CLK ;
 int CM_PER_PRUSS_CLKCTRL ;
 int CM_PER_PRUSS_CLKSTCTRL ;
 int DELAY (int) ;
 int ENXIO ;
 int PRM_PER_RSTCTRL ;
 struct am335x_prcm_softc* am335x_prcm_sc ;
 int prcm_read_4 (int ) ;
 int prcm_write_4 (int ,int) ;

__attribute__((used)) static int
am335x_clk_pruss_activate(struct ti_clock_dev *clkdev)
{
 struct am335x_prcm_softc *sc = am335x_prcm_sc;

 if (sc == ((void*)0))
  return (ENXIO);


 prcm_write_4(CM_PER_PRUSS_CLKCTRL, 2);


 while ((prcm_read_4(CM_PER_PRUSS_CLKCTRL) & 0x3) != 2)
  DELAY(10);


 prcm_write_4(CM_PER_PRUSS_CLKSTCTRL, 2);


 while ((prcm_read_4(CM_PER_PRUSS_CLKSTCTRL) & (1<<4)) == 0)
  DELAY(10);


 while ((prcm_read_4(CM_PER_PRUSS_CLKSTCTRL) & (1<<5)) == 0)
  DELAY(10);


 while ((prcm_read_4(CM_PER_PRUSS_CLKSTCTRL) & (1<<6)) == 0)
  DELAY(10);


 prcm_write_4(CLKSEL_PRUSS_OCP_CLK, 0);
 while ((prcm_read_4(CLKSEL_PRUSS_OCP_CLK) & 0x3) != 0)
  DELAY(10);


 prcm_write_4(PRM_PER_RSTCTRL, prcm_read_4(PRM_PER_RSTCTRL) & ~2);

 return (0);
}
