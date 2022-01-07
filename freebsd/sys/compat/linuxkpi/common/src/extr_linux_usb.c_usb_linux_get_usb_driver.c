
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_linux_softc {struct usb_driver* sc_udrv; } ;
struct usb_driver {int dummy; } ;


 int Giant ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct usb_driver *
usb_linux_get_usb_driver(struct usb_linux_softc *sc)
{
 struct usb_driver *udrv;

 mtx_lock(&Giant);
 udrv = sc->sc_udrv;
 mtx_unlock(&Giant);
 return (udrv);
}
