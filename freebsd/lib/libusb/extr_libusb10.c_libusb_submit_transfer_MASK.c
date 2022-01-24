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
typedef  int /*<<< orphan*/  uint8_t ;
struct libusb_transfer {int /*<<< orphan*/ * dev_handle; int /*<<< orphan*/  endpoint; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tqe_prev; } ;
struct libusb_super_transfer {int /*<<< orphan*/  state; TYPE_1__ entry; } ;
struct libusb_device {scalar_t__ device_is_gone; int /*<<< orphan*/  ctx; int /*<<< orphan*/  tr_head; } ;
struct libusb20_transfer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  LIBUSB_DEBUG_FUNCTION ; 
 int LIBUSB_ERROR_BUSY ; 
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NO_DEVICE ; 
 int LIBUSB_ERROR_OTHER ; 
 int /*<<< orphan*/  LIBUSB_SUPER_XFER_ST_PEND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct libusb_super_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 struct libusb20_transfer* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct libusb_super_transfer* FUNC6 (struct libusb20_transfer*) ; 
 struct libusb_device* FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct libusb_transfer *uxfer)
{
	struct libusb20_transfer *pxfer0;
	struct libusb20_transfer *pxfer1;
	struct libusb_super_transfer *sxfer;
	struct libusb_device *dev;
	uint8_t endpoint;
	int err;

	if (uxfer == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (uxfer->dev_handle == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	endpoint = uxfer->endpoint;

	dev = FUNC7(uxfer->dev_handle);

	FUNC2(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_submit_transfer enter");

	sxfer = (struct libusb_super_transfer *)(
	    (uint8_t *)uxfer - sizeof(*sxfer));

	FUNC0(dev->ctx);

	pxfer0 = FUNC4(uxfer->dev_handle, endpoint, 0);
	pxfer1 = FUNC4(uxfer->dev_handle, endpoint, 1);

	if (pxfer0 == NULL || pxfer1 == NULL) {
		err = LIBUSB_ERROR_OTHER;
	} else if ((sxfer->entry.tqe_prev != NULL) ||
	    (FUNC6(pxfer0) == sxfer) ||
	    (FUNC6(pxfer1) == sxfer)) {
		err = LIBUSB_ERROR_BUSY;
	} else if (dev->device_is_gone != 0) {
		err = LIBUSB_ERROR_NO_DEVICE;
	} else {

		/* set pending state */
		sxfer->state = LIBUSB_SUPER_XFER_ST_PEND;

		/* insert transfer into transfer head list */
		FUNC3(&dev->tr_head, sxfer, entry);

		/* start work transfers */
		FUNC5(
		    uxfer->dev_handle, endpoint);

		err = 0;		/* success */
	}

	FUNC1(dev->ctx);

	FUNC2(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_submit_transfer leave %d", err);

	return (err);
}