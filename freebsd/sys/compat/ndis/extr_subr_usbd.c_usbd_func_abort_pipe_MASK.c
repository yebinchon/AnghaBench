#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  upr_handle; } ;
union usbd_urb {TYPE_1__ uu_pipe; } ;
struct ndisusb_ep {int /*<<< orphan*/ * ne_xfer; } ;
struct ndis_softc {int dummy; } ;
typedef  int /*<<< orphan*/  irp ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ndis_softc*) ; 
 int /*<<< orphan*/  USBD_STATUS_INVALID_PIPE_HANDLE ; 
 int /*<<< orphan*/  USBD_STATUS_SUCCESS ; 
 struct ndis_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct ndisusb_ep* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 union usbd_urb* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC9(irp *ip)
{
	device_t dev = FUNC0(ip);
	struct ndis_softc *sc = FUNC3(dev);
	struct ndisusb_ep *ne;
	union usbd_urb *urb;

	urb = FUNC6(ip);
	ne = FUNC5(ip, urb->uu_pipe.upr_handle);
	if (ne == NULL) {
		FUNC4(FUNC0(ip), "get NULL endpoint info.\n");
		return (USBD_STATUS_INVALID_PIPE_HANDLE);
	}

	FUNC1(sc);
	FUNC8(ne->ne_xfer[0]);
	FUNC7(ne->ne_xfer[0]);
	FUNC2(sc);

	return (USBD_STATUS_SUCCESS);
}