
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ndisusb_ep {int * ne_xfer; } ;
struct ndis_softc {int dummy; } ;
struct TYPE_5__ {int irp_cancelirql; void* irp_cancel; } ;
typedef TYPE_1__ irp ;
typedef int device_t ;
typedef int device_object ;


 struct ndisusb_ep* IRP_NDISUSB_EP (TYPE_1__*) ;
 int IRP_NDIS_DEV (TYPE_1__*) ;
 int IoReleaseCancelSpinLock (int ) ;
 int NDISUSB_LOCK (struct ndis_softc*) ;
 int NDISUSB_UNLOCK (struct ndis_softc*) ;
 void* TRUE ;
 struct ndis_softc* device_get_softc (int ) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
usbd_irpcancel(device_object *dobj, irp *ip)
{
 device_t dev = IRP_NDIS_DEV(ip);
 struct ndis_softc *sc = device_get_softc(dev);
 struct ndisusb_ep *ne = IRP_NDISUSB_EP(ip);

 if (ne == ((void*)0)) {
  ip->irp_cancel = TRUE;
  IoReleaseCancelSpinLock(ip->irp_cancelirql);
  return;
 }





 NDISUSB_LOCK(sc);
 usbd_transfer_stop(ne->ne_xfer[0]);
 usbd_transfer_start(ne->ne_xfer[0]);
 NDISUSB_UNLOCK(sc);

 ip->irp_cancel = TRUE;
 IoReleaseCancelSpinLock(ip->irp_cancelirql);
}
