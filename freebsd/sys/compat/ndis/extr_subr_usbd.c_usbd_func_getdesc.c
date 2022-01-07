
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct TYPE_10__ {scalar_t__ bDescriptorType; int wTotalLength; } ;
typedef TYPE_2__ usb_config_descriptor_t ;
struct usbd_urb_control_descriptor_request {scalar_t__ ucd_desctype; void* ucd_trans_buflen; int ucd_idx; int ucd_langid; int ucd_trans_buf; } ;
union usbd_urb {struct usbd_urb_control_descriptor_request uu_ctldesc; } ;
typedef void* uint32_t ;
typedef void* uint16_t ;
struct ndis_softc {int ndisusb_mtx; int ndisusb_dev; } ;
struct TYPE_9__ {void* isb_info; } ;
struct TYPE_11__ {TYPE_1__ irp_iostat; } ;
typedef TYPE_3__ irp ;
typedef int int32_t ;
typedef int device_t ;


 int IRP_NDIS_DEV (TYPE_3__*) ;
 void* MIN (int ,void*) ;
 int NDISUSB_GETDESC_MAXRETRIES ;
 int NDISUSB_LOCK (struct ndis_softc*) ;
 int NDISUSB_UNLOCK (struct ndis_softc*) ;
 scalar_t__ UDESC_CONFIG ;
 int UGETW (int ) ;
 int USBD_STATUS_SUCCESS ;
 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 struct ndis_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int memcpy (int ,TYPE_2__*,void*) ;
 TYPE_2__* usbd_get_config_descriptor (int ) ;
 union usbd_urb* usbd_geturb (TYPE_3__*) ;
 scalar_t__ usbd_req_get_desc (int ,int *,void**,int ,int,void*,int ,scalar_t__,int ,int ) ;
 int usbd_usb2urb (scalar_t__) ;

__attribute__((used)) static int32_t
usbd_func_getdesc(irp *ip)
{

 device_t dev = IRP_NDIS_DEV(ip);
 struct ndis_softc *sc = device_get_softc(dev);
 struct usbd_urb_control_descriptor_request *ctldesc;
 uint16_t actlen;
 uint32_t len;
 union usbd_urb *urb;
 usb_config_descriptor_t *cdp;
 usb_error_t status;

 urb = usbd_geturb(ip);
 ctldesc = &urb->uu_ctldesc;
 if (ctldesc->ucd_desctype == UDESC_CONFIG) {




  cdp = usbd_get_config_descriptor(sc->ndisusb_dev);
  if (cdp == ((void*)0)) {
   status = USB_ERR_INVAL;
   goto exit;
  }
  if (cdp->bDescriptorType != UDESC_CONFIG) {
   device_printf(dev, "bad desc %d\n",
       cdp->bDescriptorType);
   status = USB_ERR_INVAL;
   goto exit;
  }

  len = MIN(UGETW(cdp->wTotalLength), ctldesc->ucd_trans_buflen);

  memcpy(ctldesc->ucd_trans_buf, cdp, len);

  actlen = len;
  status = USB_ERR_NORMAL_COMPLETION;
 } else {
  NDISUSB_LOCK(sc);
  status = usbd_req_get_desc(sc->ndisusb_dev, &sc->ndisusb_mtx,
      &actlen, ctldesc->ucd_trans_buf, 2,
      ctldesc->ucd_trans_buflen, ctldesc->ucd_langid,
      ctldesc->ucd_desctype, ctldesc->ucd_idx,
      3);
  NDISUSB_UNLOCK(sc);
 }
exit:
 if (status != USB_ERR_NORMAL_COMPLETION) {
  ctldesc->ucd_trans_buflen = 0;
  return usbd_usb2urb(status);
 }

 ctldesc->ucd_trans_buflen = actlen;
 ip->irp_iostat.isb_info = actlen;

 return (USBD_STATUS_SUCCESS);

}
