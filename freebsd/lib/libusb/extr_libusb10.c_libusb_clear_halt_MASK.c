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
typedef  int /*<<< orphan*/  uint8_t ;
struct libusb_device {int /*<<< orphan*/  ctx; } ;
struct libusb20_transfer {int dummy; } ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_BUSY ; 
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_OTHER ; 
 struct libusb20_transfer* FUNC2 (struct libusb20_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_transfer*) ; 
 int FUNC5 (struct libusb20_transfer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct libusb_device* FUNC6 (struct libusb20_device*) ; 

int
FUNC7(struct libusb20_device *pdev, uint8_t endpoint)
{
	struct libusb20_transfer *xfer;
	struct libusb_device *dev;
	int err;

	xfer = FUNC2(pdev, endpoint, 0);
	if (xfer == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	dev = FUNC6(pdev);
	if (dev == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	FUNC0(dev->ctx);
	err = FUNC5(xfer, 0, 1, endpoint);
	FUNC1(dev->ctx);

	if (err != 0 && err != LIBUSB20_ERROR_BUSY)
		return (LIBUSB_ERROR_OTHER);

	FUNC3(xfer);

	/* check if we opened the transfer */
	if (err == 0) {
		FUNC0(dev->ctx);
		FUNC4(xfer);
		FUNC1(dev->ctx);
	}
	return (0);			/* success */
}