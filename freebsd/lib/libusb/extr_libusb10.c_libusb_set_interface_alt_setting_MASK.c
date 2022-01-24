#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct libusb20_device {int dummy; } ;
struct TYPE_4__ {int claimed_interfaces; int /*<<< orphan*/  dev_poll; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ libusb_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NOT_FOUND ; 
 int LIBUSB_ERROR_OTHER ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct libusb20_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct libusb20_device*) ; 
 int FUNC6 (struct libusb20_device*,int,int) ; 
 TYPE_1__* FUNC7 (struct libusb20_device*) ; 

int
FUNC8(struct libusb20_device *pdev,
    int interface_number, int alternate_setting)
{
	libusb_device *dev;
	int err = 0;

	dev = FUNC7(pdev);
	if (dev == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (interface_number < 0 || interface_number > 31)
		return (LIBUSB_ERROR_INVALID_PARAM);

	FUNC0(dev->ctx);
	if (!(dev->claimed_interfaces & (1 << interface_number)))
		err = LIBUSB_ERROR_NOT_FOUND;
	FUNC1(dev->ctx);

	if (err)
		return (err);

	FUNC3(dev);

	FUNC4(dev->ctx, &dev->dev_poll);

	err = FUNC6(pdev,
	    interface_number, alternate_setting);

	FUNC2(dev->ctx, &dev->dev_poll,
	    pdev, FUNC5(pdev),
	    POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM);

	return (err ? LIBUSB_ERROR_OTHER : 0);
}