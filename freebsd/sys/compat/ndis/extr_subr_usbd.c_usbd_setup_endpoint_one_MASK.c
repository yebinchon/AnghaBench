#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_config {int dummy; } ;
struct ndisusb_ep {struct usb_xfer** ne_xfer; int /*<<< orphan*/  ne_lock; int /*<<< orphan*/  ne_pending; int /*<<< orphan*/  ne_active; } ;
struct ndis_softc {int /*<<< orphan*/  ndisusb_mtx; int /*<<< orphan*/  ndisusb_dev; } ;
typedef  int /*<<< orphan*/  irp ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 struct ndis_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_xfer**,struct usb_config*,int,struct ndis_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,struct ndisusb_ep*) ; 

__attribute__((used)) static usb_error_t
FUNC8(irp *ip, uint8_t ifidx, struct ndisusb_ep *ne,
    struct usb_config *epconf)
{
	device_t dev = FUNC0(ip);
	struct ndis_softc *sc = FUNC3(dev);
	struct usb_xfer *xfer;
	usb_error_t status;

	FUNC1(&ne->ne_active);
	FUNC1(&ne->ne_pending);
	FUNC2(&ne->ne_lock);

	status = FUNC6(sc->ndisusb_dev, &ifidx, ne->ne_xfer,
	    epconf, 1, sc, &sc->ndisusb_mtx);
	if (status != USB_ERR_NORMAL_COMPLETION) {
		FUNC4(dev, "couldn't setup xfer: %s\n",
		    FUNC5(status));
		return (status);
	}
	xfer = ne->ne_xfer[0];
	FUNC7(xfer, ne);

	return (status);
}