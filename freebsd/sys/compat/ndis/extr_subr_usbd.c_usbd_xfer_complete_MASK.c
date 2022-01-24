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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct ndisusb_xferdone {int /*<<< orphan*/  nd_donelist; int /*<<< orphan*/  nd_status; struct ndisusb_xfer* nd_xfer; } ;
struct ndisusb_xfer {int dummy; } ;
struct ndisusb_ep {int dummy; } ;
struct ndis_softc {int /*<<< orphan*/  ndisusb_xferdoneitem; int /*<<< orphan*/  ndisusb_xferdonelock; int /*<<< orphan*/  ndisusb_xferdonelist; int /*<<< orphan*/  ndis_dev; } ;
typedef  int /*<<< orphan*/  io_workitem_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int M_ZERO ; 
 int /*<<< orphan*/  WORKQUEUE_CRITICAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct ndisusb_xferdone* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ usbd_xfertask_wrap ; 

__attribute__((used)) static void
FUNC6(struct ndis_softc *sc, struct ndisusb_ep *ne,
    struct ndisusb_xfer *nx, usb_error_t status)
{
	struct ndisusb_xferdone *nd;
	uint8_t irql;

	nd = FUNC5(sizeof(struct ndisusb_xferdone), M_USBDEV,
	    M_NOWAIT | M_ZERO);
	if (nd == NULL) {
		FUNC4(sc->ndis_dev, "out of memory");
		return;
	}
	nd->nd_xfer = nx;
	nd->nd_status = status;

	FUNC2(&sc->ndisusb_xferdonelock, &irql);
	FUNC0((&sc->ndisusb_xferdonelist), (&nd->nd_donelist));
	FUNC3(&sc->ndisusb_xferdonelock, irql);

	FUNC1(sc->ndisusb_xferdoneitem,
	    (io_workitem_func)usbd_xfertask_wrap, WORKQUEUE_CRITICAL, sc);
}