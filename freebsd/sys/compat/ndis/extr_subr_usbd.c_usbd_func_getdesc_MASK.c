#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct TYPE_10__ {scalar_t__ bDescriptorType; int /*<<< orphan*/  wTotalLength; } ;
typedef  TYPE_2__ usb_config_descriptor_t ;
struct usbd_urb_control_descriptor_request {scalar_t__ ucd_desctype; void* ucd_trans_buflen; int /*<<< orphan*/  ucd_idx; int /*<<< orphan*/  ucd_langid; int /*<<< orphan*/  ucd_trans_buf; } ;
union usbd_urb {struct usbd_urb_control_descriptor_request uu_ctldesc; } ;
typedef  void* uint32_t ;
typedef  void* uint16_t ;
struct ndis_softc {int /*<<< orphan*/  ndisusb_mtx; int /*<<< orphan*/  ndisusb_dev; } ;
struct TYPE_9__ {void* isb_info; } ;
struct TYPE_11__ {TYPE_1__ irp_iostat; } ;
typedef  TYPE_3__ irp ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  NDISUSB_GETDESC_MAXRETRIES ; 
 int /*<<< orphan*/  FUNC2 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ndis_softc*) ; 
 scalar_t__ UDESC_CONFIG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBD_STATUS_SUCCESS ; 
 scalar_t__ USB_ERR_INVAL ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 struct ndis_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,void*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 union usbd_urb* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int32_t
FUNC12(irp *ip)
{
#define	NDISUSB_GETDESC_MAXRETRIES		3
	device_t dev = FUNC0(ip);
	struct ndis_softc *sc = FUNC5(dev);
	struct usbd_urb_control_descriptor_request *ctldesc;
	uint16_t actlen;
	uint32_t len;
	union usbd_urb *urb;
	usb_config_descriptor_t *cdp;
	usb_error_t status;

	urb = FUNC9(ip);
	ctldesc = &urb->uu_ctldesc;
	if (ctldesc->ucd_desctype == UDESC_CONFIG) {
		/*
		 * The NDIS driver is not allowed to change the
		 * config! There is only one choice!
		 */
		cdp = FUNC8(sc->ndisusb_dev);
		if (cdp == NULL) {
			status = USB_ERR_INVAL;
			goto exit;
		}
		if (cdp->bDescriptorType != UDESC_CONFIG) {
			FUNC6(dev, "bad desc %d\n",
			    cdp->bDescriptorType);
			status = USB_ERR_INVAL;
			goto exit;
		}
		/* get minimum length */
		len = FUNC1(FUNC4(cdp->wTotalLength), ctldesc->ucd_trans_buflen);
		/* copy out config descriptor */
		FUNC7(ctldesc->ucd_trans_buf, cdp, len);
		/* set actual length */
		actlen = len;
		status = USB_ERR_NORMAL_COMPLETION;
	} else {
		FUNC2(sc);
		status = FUNC10(sc->ndisusb_dev, &sc->ndisusb_mtx,
		    &actlen, ctldesc->ucd_trans_buf, 2,
		    ctldesc->ucd_trans_buflen, ctldesc->ucd_langid,
		    ctldesc->ucd_desctype, ctldesc->ucd_idx,
		    NDISUSB_GETDESC_MAXRETRIES);
		FUNC3(sc);
	}
exit:
	if (status != USB_ERR_NORMAL_COMPLETION) {
		ctldesc->ucd_trans_buflen = 0;
		return FUNC11(status);
	}

	ctldesc->ucd_trans_buflen = actlen;
	ip->irp_iostat.isb_info = actlen;

	return (USBD_STATUS_SUCCESS);
#undef NDISUSB_GETDESC_MAXRETRIES
}