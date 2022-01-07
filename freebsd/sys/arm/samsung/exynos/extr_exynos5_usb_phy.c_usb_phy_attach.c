
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy_softc {int * res; int bsh; int bst; int dev; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct usb_phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int usb3_phy_init (struct usb_phy_softc*) ;
 int usb_phy_spec ;
 int usbdrd_phy_power_on () ;
 int vbus_on (struct usb_phy_softc*) ;

__attribute__((used)) static int
usb_phy_attach(device_t dev)
{
 struct usb_phy_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, usb_phy_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 vbus_on(sc);

 usbdrd_phy_power_on();

 DELAY(100);

 usb3_phy_init(sc);

 return (0);
}
