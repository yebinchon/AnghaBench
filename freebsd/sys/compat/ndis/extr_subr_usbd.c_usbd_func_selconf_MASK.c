#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct TYPE_4__ {int bInterval; int /*<<< orphan*/  bmAttributes; int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bEndpointAddress; } ;
typedef  TYPE_1__ usb_endpoint_descriptor_t ;
struct TYPE_5__ {int bNumInterface; } ;
typedef  TYPE_2__ usb_config_descriptor_t ;
struct usbd_interface_information {scalar_t__ uii_len; int uii_numeps; int /*<<< orphan*/  uii_intfnum; struct usbd_pipe_information* uii_pipes; int /*<<< orphan*/  uii_altset; } ;
struct usbd_urb_select_configuration {struct usbd_interface_information usc_intf; TYPE_2__* usc_conf; } ;
union usbd_urb {struct usbd_urb_select_configuration uu_selconf; } ;
struct usbd_pipe_information {scalar_t__ upi_type; int upi_interval; int /*<<< orphan*/  upi_maxpktsize; int /*<<< orphan*/  upi_epaddr; TYPE_1__* upi_handle; } ;
struct usb_endpoint {TYPE_1__* edesc; } ;
struct usb_device {scalar_t__ speed; } ;
struct ndis_softc {struct usb_device* ndisusb_dev; } ;
typedef  int /*<<< orphan*/  irp ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBD_STATUS_SUCCESS ; 
 scalar_t__ USB_ERR_IN_USE ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_LOW ; 
 struct ndis_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct usb_endpoint* FUNC5 (struct usb_device*,struct usb_endpoint*) ; 
 int FUNC6 (scalar_t__) ; 
 union usbd_urb* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int32_t
FUNC11(irp *ip)
{
	device_t dev = FUNC0(ip);
	int i, j;
	struct ndis_softc *sc = FUNC3(dev);
	struct usb_device *udev = sc->ndisusb_dev;
	struct usb_endpoint *ep = NULL;
	struct usbd_interface_information *intf;
	struct usbd_pipe_information *pipe;
	struct usbd_urb_select_configuration *selconf;
	union usbd_urb *urb;
	usb_config_descriptor_t *conf;
	usb_endpoint_descriptor_t *edesc;
	usb_error_t ret;

	urb = FUNC7(ip);

	selconf = &urb->uu_selconf;
	conf = selconf->usc_conf;
	if (conf == NULL) {
		FUNC4(dev, "select configuration is NULL\n");
		return FUNC10(USB_ERR_NORMAL_COMPLETION);
	}

	intf = &selconf->usc_intf;
	for (i = 0; i < conf->bNumInterface && intf->uii_len > 0; i++) {
		ret = FUNC8(udev,
		    intf->uii_intfnum, intf->uii_altset);
		if (ret != USB_ERR_NORMAL_COMPLETION && ret != USB_ERR_IN_USE) {
			FUNC4(dev,
			    "setting alternate interface failed: %s\n",
			    FUNC6(ret));
			return FUNC10(ret);
		}

		for (j = 0; (ep = FUNC5(udev, ep)); j++) {
			if (j >= intf->uii_numeps) {
				FUNC4(dev,
				    "endpoint %d and above are ignored",
				    intf->uii_numeps);
				break;
			}
			edesc = ep->edesc;
			pipe = &intf->uii_pipes[j];
			pipe->upi_handle = edesc;
			pipe->upi_epaddr = edesc->bEndpointAddress;
			pipe->upi_maxpktsize = FUNC2(edesc->wMaxPacketSize);
			pipe->upi_type = FUNC1(edesc->bmAttributes);

			ret = FUNC9(ip, intf->uii_intfnum, edesc);
			if (ret != USB_ERR_NORMAL_COMPLETION)
				return FUNC10(ret);

			if (pipe->upi_type != UE_INTERRUPT)
				continue;

			/* XXX we're following linux USB's interval policy.  */
			if (udev->speed == USB_SPEED_LOW)
				pipe->upi_interval = edesc->bInterval + 5;
			else if (udev->speed == USB_SPEED_FULL)
				pipe->upi_interval = edesc->bInterval;
			else {
				int k0 = 0, k1 = 1;
				do {
					k1 = k1 * 2;
					k0 = k0 + 1;
				} while (k1 < edesc->bInterval);
				pipe->upi_interval = k0;
			}
		}

		intf = (struct usbd_interface_information *)(((char *)intf) +
		    intf->uii_len);
	}

	return (USBD_STATUS_SUCCESS);
}