
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct omap_ehci_softc {int sc_dev; } ;
typedef int device_t ;


 scalar_t__ EHCI_HCD_OMAP_MODE_PHY ;
 int OMAP_HS_USB_PORTS ;
 int OMAP_USBHOST_USBCMD ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int omap_ehci_read_4 (struct omap_ehci_softc*,int ) ;
 int omap_ehci_soft_phy_reset (struct omap_ehci_softc*,int) ;
 int omap_ehci_write_4 (struct omap_ehci_softc*,int ,int) ;
 scalar_t__ omap_usb_port_mode (int ,int) ;

__attribute__((used)) static int
omap_ehci_init(struct omap_ehci_softc *isc)
{
 uint32_t reg = 0;
 int i;
 device_t uhh_dev;

 uhh_dev = device_get_parent(isc->sc_dev);
 device_printf(isc->sc_dev, "Starting TI EHCI USB Controller\n");





 reg = omap_ehci_read_4(isc, OMAP_USBHOST_USBCMD);
 reg &= 0xff00ffff;
 reg |= (1 << 16);
 omap_ehci_write_4(isc, OMAP_USBHOST_USBCMD, reg);


 for (i = 0; i < OMAP_HS_USB_PORTS; i++) {
  if (omap_usb_port_mode(uhh_dev, i) == EHCI_HCD_OMAP_MODE_PHY)
   omap_ehci_soft_phy_reset(isc, i);

 }

 return(0);
}
