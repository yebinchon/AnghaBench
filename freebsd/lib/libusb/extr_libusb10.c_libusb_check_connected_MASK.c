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
struct libusb20_device {int dummy; } ;
typedef  int /*<<< orphan*/  libusb_device ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NO_DEVICE ; 
 int FUNC0 (struct libusb20_device*) ; 
 int /*<<< orphan*/ * FUNC1 (struct libusb20_device*) ; 

int
FUNC2(struct libusb20_device *pdev)
{
	libusb_device *dev;
	int err;

	dev = FUNC1(pdev);
	if (dev == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	err = FUNC0(pdev);

	return (err ? LIBUSB_ERROR_NO_DEVICE : 0);
}