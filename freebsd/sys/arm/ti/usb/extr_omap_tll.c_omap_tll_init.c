
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_tll_softc {int sc_dev; } ;


 int EINVAL ;
 int OMAP_USBTLL_SYSCONFIG ;
 int OMAP_USBTLL_SYSSTATUS ;
 int TLL_SYSCONFIG_AUTOIDLE ;
 int TLL_SYSCONFIG_CACTIVITY ;
 int TLL_SYSCONFIG_ENAWAKEUP ;
 int TLL_SYSCONFIG_SIDLE_SMART_IDLE ;
 int TLL_SYSCONFIG_SOFTRESET ;
 int TLL_SYSSTATUS_RESETDONE ;
 int USBTLL_CLK ;
 int device_printf (int ,char*) ;
 int hz ;
 int omap_tll_read_4 (struct omap_tll_softc*,int ) ;
 int omap_tll_write_4 (struct omap_tll_softc*,int ,int) ;
 int pause (char*,int) ;
 int ti_prcm_clk_disable (int ) ;
 int ti_prcm_clk_enable (int ) ;

__attribute__((used)) static int
omap_tll_init(struct omap_tll_softc *sc)
{
 unsigned long timeout;
 int ret = 0;


 ti_prcm_clk_enable(USBTLL_CLK);


 omap_tll_write_4(sc, OMAP_USBTLL_SYSCONFIG, TLL_SYSCONFIG_SOFTRESET);


 timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);


 while ((omap_tll_read_4(sc, OMAP_USBTLL_SYSSTATUS) &
         TLL_SYSSTATUS_RESETDONE) == 0x00) {


  pause("USBRESET", 1);

  if (timeout-- == 0) {
   device_printf(sc->sc_dev, "TLL reset operation timed out\n");
   ret = EINVAL;
   goto err_sys_status;
  }
 }






 omap_tll_write_4(sc, OMAP_USBTLL_SYSCONFIG, TLL_SYSCONFIG_ENAWAKEUP |
                                             TLL_SYSCONFIG_AUTOIDLE |
                                             TLL_SYSCONFIG_SIDLE_SMART_IDLE |
                                             TLL_SYSCONFIG_CACTIVITY);

 return(0);

err_sys_status:

 ti_prcm_clk_disable(USBTLL_CLK);

 return(ret);
}
