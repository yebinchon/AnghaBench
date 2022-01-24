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
struct libusb_transfer {int /*<<< orphan*/  status; int /*<<< orphan*/  endpoint; struct libusb_device_handle* dev_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tqe_prev; } ;
struct libusb_super_transfer {scalar_t__ state; TYPE_1__ entry; } ;
struct libusb_device_handle {int dummy; } ;
struct libusb_device {scalar_t__ device_is_gone; int /*<<< orphan*/  ctx; int /*<<< orphan*/  tr_head; } ;
struct libusb20_transfer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LIBUSB_DEBUG_FUNCTION ; 
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NOT_FOUND ; 
 scalar_t__ LIBUSB_SUPER_XFER_ST_PEND ; 
 int /*<<< orphan*/  LIBUSB_TRANSFER_CANCELLED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct libusb_super_transfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_transfer*,struct libusb_super_transfer*,int /*<<< orphan*/ ) ; 
 struct libusb20_transfer* FUNC5 (struct libusb_device_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb_device_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct libusb_super_transfer* FUNC8 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct libusb20_transfer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct libusb20_transfer*) ; 
 struct libusb_device* FUNC11 (struct libusb_device_handle*) ; 

int
FUNC12(struct libusb_transfer *uxfer)
{
	struct libusb20_transfer *pxfer0;
	struct libusb20_transfer *pxfer1;
	struct libusb_super_transfer *sxfer;
	struct libusb_device *dev;
	struct libusb_device_handle *devh;
	uint8_t endpoint;
	int retval;

	if (uxfer == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	/* check if not initialised */
	if ((devh = uxfer->dev_handle) == NULL)
		return (LIBUSB_ERROR_NOT_FOUND);

	endpoint = uxfer->endpoint;

	dev = FUNC11(devh);

	FUNC2(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_cancel_transfer enter");

	sxfer = (struct libusb_super_transfer *)(
	    (uint8_t *)uxfer - sizeof(*sxfer));

	retval = 0;

	FUNC0(dev->ctx);

	pxfer0 = FUNC5(devh, endpoint, 0);
	pxfer1 = FUNC5(devh, endpoint, 1);

	if (sxfer->state != LIBUSB_SUPER_XFER_ST_PEND) {
		/* only update the transfer status */
		uxfer->status = LIBUSB_TRANSFER_CANCELLED;
		retval = LIBUSB_ERROR_NOT_FOUND;
	} else if (sxfer->entry.tqe_prev != NULL) {
		/* we are lucky - transfer is on a queue */
		FUNC3(&dev->tr_head, sxfer, entry);
		sxfer->entry.tqe_prev = NULL;
		FUNC4(NULL,
		    sxfer, LIBUSB_TRANSFER_CANCELLED);
		/* make sure our event loop spins the done handler */
		FUNC7(dev->ctx);
	} else if (pxfer0 == NULL || pxfer1 == NULL) {
		/* not started */
		retval = LIBUSB_ERROR_NOT_FOUND;
	} else if (FUNC8(pxfer0) == sxfer) {
		FUNC4(pxfer0,
		    sxfer, LIBUSB_TRANSFER_CANCELLED);
		if (dev->device_is_gone != 0) {
			/* clear transfer pointer */
			FUNC9(pxfer0, NULL);
			/* make sure our event loop spins the done handler */
			FUNC7(dev->ctx);
		} else {
			FUNC10(pxfer0);
			/* make sure the queue doesn't stall */
			FUNC6(devh, endpoint);
		}
	} else if (FUNC8(pxfer1) == sxfer) {
		FUNC4(pxfer1,
		    sxfer, LIBUSB_TRANSFER_CANCELLED);
		/* check if handle is still active */
		if (dev->device_is_gone != 0) {
			/* clear transfer pointer */
			FUNC9(pxfer1, NULL);
			/* make sure our event loop spins the done handler */
			FUNC7(dev->ctx);
		} else {
			FUNC10(pxfer1);
			/* make sure the queue doesn't stall */
			FUNC6(devh, endpoint);
		}
	} else {
		/* not started */
		retval = LIBUSB_ERROR_NOT_FOUND;
	}

	FUNC1(dev->ctx);

	FUNC2(dev->ctx, LIBUSB_DEBUG_FUNCTION, "libusb_cancel_transfer leave");

	return (retval);
}