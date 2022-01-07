
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct omap_ehci_softc {int sc_dev; } ;


 int OMAP_USBHOST_INSNREG05_ULPI ;
 int OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT ;
 int OMAP_USBHOST_INSNREG05_ULPI_OPSEL_SHIFT ;
 unsigned int OMAP_USBHOST_INSNREG05_ULPI_PORTSEL_SHIFT ;
 int OMAP_USBHOST_INSNREG05_ULPI_REGADD_SHIFT ;
 int ULPI_FUNC_CTRL ;
 int ULPI_FUNC_CTRL_RESET ;
 int ULPI_SET (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int omap_ehci_read_4 (struct omap_ehci_softc*,int ) ;
 int omap_ehci_write_4 (struct omap_ehci_softc*,int ,int) ;
 int pause (char*,int) ;

__attribute__((used)) static void
omap_ehci_soft_phy_reset(struct omap_ehci_softc *isc, unsigned int port)
{
 unsigned long timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);
 uint32_t reg;

 reg = ULPI_FUNC_CTRL_RESET

  | (ULPI_SET(ULPI_FUNC_CTRL) << OMAP_USBHOST_INSNREG05_ULPI_REGADD_SHIFT)

  | (2 << OMAP_USBHOST_INSNREG05_ULPI_OPSEL_SHIFT)

  | ((port + 1) << OMAP_USBHOST_INSNREG05_ULPI_PORTSEL_SHIFT)

  | (1 << OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT);

 omap_ehci_write_4(isc, OMAP_USBHOST_INSNREG05_ULPI, reg);


 while ((omap_ehci_read_4(isc, OMAP_USBHOST_INSNREG05_ULPI)
        & (1 << OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT))) {


  pause("USBPHY_RESET", 1);

  if (timeout-- == 0) {
   device_printf(isc->sc_dev, "PHY reset operation timed out\n");
   break;
  }
 }
}
