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
typedef  scalar_t__ uint16_t ;
struct libusb20_transfer {int /*<<< orphan*/  is_opened; } ;
struct libusb20_device {scalar_t__ nTransfer; scalar_t__ auto_detach; scalar_t__ claimed_interface; scalar_t__ is_opened; int /*<<< orphan*/ * methods; TYPE_1__* beMethods; struct libusb20_transfer* pTransfer; } ;
struct TYPE_2__ {int (* close_device ) (struct libusb20_device*) ;} ;

/* Variables and functions */
 int LIBUSB20_ERROR_OTHER ; 
 int /*<<< orphan*/  FUNC0 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  libusb20_dummy_methods ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_transfer*) ; 
 int FUNC3 (struct libusb20_device*) ; 

int
FUNC4(struct libusb20_device *pdev)
{
	struct libusb20_transfer *xfer;
	uint16_t x;
	int error = 0;

	if (!pdev->is_opened) {
		return (LIBUSB20_ERROR_OTHER);
	}
	for (x = 0; x != pdev->nTransfer; x++) {
		xfer = pdev->pTransfer + x;

		if (!xfer->is_opened) {
			/* transfer is not opened */
			continue;
		}

		FUNC2(xfer);

		FUNC1(xfer);
	}

	if (pdev->pTransfer != NULL) {
		FUNC0(pdev->pTransfer);
		pdev->pTransfer = NULL;
	}
	error = pdev->beMethods->close_device(pdev);

	pdev->methods = &libusb20_dummy_methods;

	pdev->is_opened = 0;

	/* 
	 * The following variable is only used by the libusb v0.1
	 * compat layer:
	 */
	pdev->claimed_interface = 0;

	/*
	 * The following variable is only used by the libusb v1.0
	 * compat layer:
	 */
	pdev->auto_detach = 0;

	return (error);
}