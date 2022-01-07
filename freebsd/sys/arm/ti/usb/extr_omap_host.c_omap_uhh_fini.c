
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_uhh_softc {int sc_dev; } ;


 int OMAP_USBHOST_UHH_SYSCONFIG ;
 int OMAP_USBHOST_UHH_SYSSTATUS ;
 int USBHSHOST_CLK ;
 int device_printf (int ,char*) ;
 int hz ;
 int omap_uhh_read_4 (struct omap_uhh_softc*,int ) ;
 int omap_uhh_write_4 (struct omap_uhh_softc*,int ,int) ;
 int pause (char*,int) ;
 int ti_prcm_clk_disable (int ) ;

__attribute__((used)) static void
omap_uhh_fini(struct omap_uhh_softc *isc)
{
 unsigned long timeout;

 device_printf(isc->sc_dev, "Stopping TI EHCI USB Controller\n");


 if (hz < 10)
  timeout = 1;
 else
  timeout = (100 * hz) / 1000;


 omap_uhh_write_4(isc, OMAP_USBHOST_UHH_SYSCONFIG, 0x0002);
 while ((omap_uhh_read_4(isc, OMAP_USBHOST_UHH_SYSSTATUS) & 0x07) == 0x00) {

  pause("USBRESET", 1);

  if (timeout-- == 0) {
   device_printf(isc->sc_dev, "operation timed out\n");
   break;
  }
 }


 ti_prcm_clk_disable(USBHSHOST_CLK);

 device_printf(isc->sc_dev, "Clock to USB host has been disabled\n");
}
