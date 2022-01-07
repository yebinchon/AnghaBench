
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct padctl_softc {int dev; } ;
struct padctl_lane {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int IOPHY_MISC_PAD_S0_CTL1_IDDQ ;
 int IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD ;
 int IOPHY_PLL_S0_CTL1_PLL1_LOCKDET ;
 int IOPHY_PLL_S0_CTL1_PLL1_MODE ;
 int IOPHY_PLL_S0_CTL1_PLL_IDDQ ;
 int IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD ;
 int IOPHY_PLL_S0_CTL1_PLL_RST_L ;
 int RD4 (struct padctl_softc*,int ) ;
 int USB3_PAD_MUX_SATA_IDDQ_DISABLE ;
 int WR4 (struct padctl_softc*,int ,int) ;
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1 ;
 int XUSB_PADCTL_USB3_PAD_MUX ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
sata_powerup(struct padctl_softc *sc, struct padctl_lane *lane)
{
 uint32_t reg;
 int i;

 reg = RD4(sc, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);
 reg &= ~IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD;
 reg &= ~IOPHY_MISC_PAD_S0_CTL1_IDDQ;
 WR4(sc, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, reg);

 reg = RD4(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 reg &= ~IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD;
 reg &= ~IOPHY_PLL_S0_CTL1_PLL_IDDQ;
 WR4(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1, reg);

 reg = RD4(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 reg |= IOPHY_PLL_S0_CTL1_PLL1_MODE;
 WR4(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1, reg);

 reg = RD4(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 reg |= IOPHY_PLL_S0_CTL1_PLL_RST_L;
 WR4(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1, reg);

 for (i = 100; i >= 0; i--) {
  reg = RD4(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
  if (reg & IOPHY_PLL_S0_CTL1_PLL1_LOCKDET)
   break;
  DELAY(100);
 }
 if (i <= 0) {
  device_printf(sc->dev, "Failed to power up SATA phy\n");
  return (ETIMEDOUT);
 }
 reg = RD4(sc, XUSB_PADCTL_USB3_PAD_MUX);
 reg |= IOPHY_PLL_S0_CTL1_PLL_RST_L;
 WR4(sc, XUSB_PADCTL_USB3_PAD_MUX, reg);

 reg = RD4(sc, XUSB_PADCTL_USB3_PAD_MUX);
 reg |= USB3_PAD_MUX_SATA_IDDQ_DISABLE;
 WR4(sc, XUSB_PADCTL_USB3_PAD_MUX, reg);

 return (0);
}
