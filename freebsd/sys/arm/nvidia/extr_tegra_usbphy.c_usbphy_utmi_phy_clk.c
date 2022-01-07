
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usbphy_softc {int dev; } ;


 int CTRL_USB_HOSTPC1_DEVLC ;
 int ETIMEDOUT ;
 int IF_USB_SUSP_CTRL ;
 int RD4 (struct usbphy_softc*,int ) ;
 int USB_HOSTPC1_DEVLC_PHCD ;
 int USB_PHY_CLK_VALID ;
 int WR4 (struct usbphy_softc*,int ,int ) ;
 int device_printf (int ,char*) ;
 int reg_wait (struct usbphy_softc*,int ,int ,int ) ;

__attribute__((used)) static int
usbphy_utmi_phy_clk(struct usbphy_softc *sc, bool enable)
{
 uint32_t val;
 int rv;

 val = RD4(sc, CTRL_USB_HOSTPC1_DEVLC);
 if (enable)
  val &= ~USB_HOSTPC1_DEVLC_PHCD;
 else
  val |= USB_HOSTPC1_DEVLC_PHCD;
 WR4(sc, CTRL_USB_HOSTPC1_DEVLC, val);

 rv = reg_wait(sc, IF_USB_SUSP_CTRL, USB_PHY_CLK_VALID,
     enable ? USB_PHY_CLK_VALID: 0);
 if (rv != 0) {
  device_printf(sc->dev, "USB phy clock timeout.\n");
  return (ETIMEDOUT);
 }
 return (0);
}
