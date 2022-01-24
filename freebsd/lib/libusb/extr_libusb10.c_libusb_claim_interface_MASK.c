#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct libusb20_device {scalar_t__ auto_detach; } ;
struct TYPE_3__ {int claimed_interfaces; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ libusb_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int FUNC2 (struct libusb20_device*,int) ; 
 TYPE_1__* FUNC3 (struct libusb20_device*) ; 

int
FUNC4(struct libusb20_device *pdev, int interface_number)
{
	libusb_device *dev;
	int err = 0;

	dev = FUNC3(pdev);
	if (dev == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (interface_number < 0 || interface_number > 31)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (pdev->auto_detach != 0) {
		err = FUNC2(pdev, interface_number);
		if (err != 0)
			goto done;
	}

	FUNC0(dev->ctx);
	dev->claimed_interfaces |= (1 << interface_number);
	FUNC1(dev->ctx);
done:
	return (err);
}