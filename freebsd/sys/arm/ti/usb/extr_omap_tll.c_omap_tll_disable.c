
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_tll_softc {int sc_dev; } ;


 int OMAP_USBTLL_SYSCONFIG ;
 int OMAP_USBTLL_SYSSTATUS ;
 int USBTLL_CLK ;
 int device_printf (int ,char*) ;
 int hz ;
 int omap_tll_read_4 (struct omap_tll_softc*,int ) ;
 int omap_tll_write_4 (struct omap_tll_softc*,int ,int) ;
 int pause (char*,int) ;
 int ti_prcm_clk_disable (int ) ;

__attribute__((used)) static void
omap_tll_disable(struct omap_tll_softc *sc)
{
 unsigned long timeout;

 timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);


 omap_tll_write_4(sc, OMAP_USBTLL_SYSCONFIG, 0x0002);
 while ((omap_tll_read_4(sc, OMAP_USBTLL_SYSSTATUS) & (0x01)) == 0x00) {

  pause("USBRESET", 1);

  if (timeout-- == 0) {
   device_printf(sc->sc_dev, "operation timed out\n");
   break;
  }
 }


 ti_prcm_clk_disable(USBTLL_CLK);
}
