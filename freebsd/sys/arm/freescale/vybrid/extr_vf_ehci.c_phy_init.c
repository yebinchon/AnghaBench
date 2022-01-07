
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vybrid_ehci_softc {int dev; } ;
typedef int * device_t ;


 int DELAY (int) ;
 int ENUTMILEVEL2 ;
 int ENUTMILEVEL3 ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int ,int ) ;
 int GPIO_PIN_SETFLAGS (int *,int ,int ) ;
 int GPIO_USB_PWR ;
 int PHY_READ4 (struct vybrid_ehci_softc*,int ) ;
 int PHY_WRITE4 (struct vybrid_ehci_softc*,int ,int) ;
 int USBPHY_CTRL ;
 int USBPHY_CTRL_CLKGATE ;
 int USBPHY_CTRL_SET ;
 int USBPHY_CTRL_SFTRST ;
 int USBPHY_DEBUG ;
 int USBPHY_DEBUG0_STATUS ;
 int USBPHY_DEBUG1 ;
 int USBPHY_DEBUG_CLKGATE ;
 int USBPHY_IP ;
 int USBPHY_PWD ;
 int USBPHY_STATUS ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int device_printf (int ,char*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
phy_init(struct vybrid_ehci_softc *esc)
{
 device_t sc_gpio_dev;
 int reg;


 reg = PHY_READ4(esc, USBPHY_CTRL);
 reg |= (USBPHY_CTRL_SFTRST);
 PHY_WRITE4(esc, USBPHY_CTRL, reg);


 DELAY(10000);

 reg &= ~(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE);
 PHY_WRITE4(esc, USBPHY_CTRL, reg);

 reg = (ENUTMILEVEL2 | ENUTMILEVEL3);
 PHY_WRITE4(esc, USBPHY_CTRL_SET, reg);


 sc_gpio_dev = devclass_get_device(devclass_find("gpio"), 0);
 if (sc_gpio_dev == ((void*)0)) {
  device_printf(esc->dev, "Error: failed to get the GPIO dev\n");
  return (1);
 }


 GPIO_PIN_SETFLAGS(sc_gpio_dev, GPIO_USB_PWR, GPIO_PIN_OUTPUT);
 GPIO_PIN_SET(sc_gpio_dev, GPIO_USB_PWR, GPIO_PIN_HIGH);


 PHY_WRITE4(esc, USBPHY_PWD, 0x00);


 reg = PHY_READ4(esc, USBPHY_DEBUG);
 reg &= ~(USBPHY_DEBUG_CLKGATE);
 PHY_WRITE4(esc, USBPHY_DEBUG, reg);
 return (0);
}
