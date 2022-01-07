
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_clock_dev {int dummy; } ;
struct am335x_prcm_softc {int dummy; } ;


 int CM_PER_CPGMAC0_CLKCTRL ;
 int CM_PER_CPSW_CLKSTCTRL ;
 int ENXIO ;
 struct am335x_prcm_softc* am335x_prcm_sc ;
 int prcm_read_4 (int ) ;
 int prcm_write_4 (int ,int) ;

__attribute__((used)) static int
am335x_clk_cpsw_activate(struct ti_clock_dev *clkdev)
{
 struct am335x_prcm_softc *sc = am335x_prcm_sc;

 if (sc == ((void*)0))
  return ENXIO;


 prcm_write_4(CM_PER_CPGMAC0_CLKCTRL, 2);


 while(prcm_read_4(CM_PER_CPGMAC0_CLKCTRL) & (3<<16));


 prcm_write_4(CM_PER_CPSW_CLKSTCTRL, 2);


 while((prcm_read_4(CM_PER_CPSW_CLKSTCTRL) & (1<<4)) == 0);
 return(0);
}
