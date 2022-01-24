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
struct TYPE_4__ {int /*<<< orphan*/  dev_poll; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ libusb_device ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_OTHER ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct libusb20_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_device*) ; 
 int FUNC4 (struct libusb20_device*) ; 
 TYPE_1__* FUNC5 (struct libusb20_device*) ; 

int
FUNC6(struct libusb20_device *pdev)
{
	libusb_device *dev;
	int err;

	dev = FUNC5(pdev);
	if (dev == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	FUNC1(dev);

	FUNC2(dev->ctx, &dev->dev_poll);

	err = FUNC4(pdev);

	FUNC0(dev->ctx, &dev->dev_poll,
	    pdev, FUNC3(pdev),
	    POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM);

	return (err ? LIBUSB_ERROR_OTHER : 0);
}