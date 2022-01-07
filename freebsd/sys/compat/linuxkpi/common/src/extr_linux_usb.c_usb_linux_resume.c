
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_linux_softc {int sc_ui; } ;
struct usb_driver {int (* resume ) (int ) ;} ;
typedef int device_t ;


 struct usb_linux_softc* device_get_softc (int ) ;
 int stub1 (int ) ;
 struct usb_driver* usb_linux_get_usb_driver (struct usb_linux_softc*) ;

__attribute__((used)) static int
usb_linux_resume(device_t dev)
{
 struct usb_linux_softc *sc = device_get_softc(dev);
 struct usb_driver *udrv = usb_linux_get_usb_driver(sc);
 int err;

 if (udrv && udrv->resume) {
  err = (udrv->resume) (sc->sc_ui);
 }
 return (0);
}
