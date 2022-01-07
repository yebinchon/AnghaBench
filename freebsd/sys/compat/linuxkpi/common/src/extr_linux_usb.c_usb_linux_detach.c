
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * le_prev; } ;
struct usb_linux_softc {int sc_ui; int sc_fbsd_udev; struct usb_driver* sc_udrv; TYPE_1__ sc_attached_list; } ;
struct usb_driver {int (* disconnect ) (int ) ;} ;
typedef int device_t ;


 int Giant ;
 int LIST_REMOVE (struct usb_linux_softc*,int ) ;
 struct usb_linux_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sc_attached_list ;
 int stub1 (int ) ;
 int usb_linux_cleanup_interface (int ,int ) ;

__attribute__((used)) static int
usb_linux_detach(device_t dev)
{
 struct usb_linux_softc *sc = device_get_softc(dev);
 struct usb_driver *udrv = ((void*)0);

 mtx_lock(&Giant);
 if (sc->sc_attached_list.le_prev) {
  LIST_REMOVE(sc, sc_attached_list);
  sc->sc_attached_list.le_prev = ((void*)0);
  udrv = sc->sc_udrv;
  sc->sc_udrv = ((void*)0);
 }
 mtx_unlock(&Giant);

 if (udrv && udrv->disconnect) {
  (udrv->disconnect) (sc->sc_ui);
 }





 usb_linux_cleanup_interface(sc->sc_fbsd_udev, sc->sc_ui);
 return (0);
}
