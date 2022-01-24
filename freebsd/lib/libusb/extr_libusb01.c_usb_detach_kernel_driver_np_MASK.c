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
typedef  int /*<<< orphan*/  usb_dev_handle ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct libusb20_device*,int) ; 

int
FUNC1(usb_dev_handle * dev, int interface)
{
	struct libusb20_device *pdev;
	int err;

	pdev = (void *)dev;

	if (pdev == NULL)
		return (-1);

	err = FUNC0(pdev, interface);
	if (err != 0)
		return (-1);

	return (0);
}