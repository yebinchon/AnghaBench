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
typedef  int /*<<< orphan*/  usb_dev_handle ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/ * usb_backend ; 
 struct usb_device* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ usb_global_bus ; 

int
FUNC6(usb_dev_handle * udev)
{
	struct usb_device *dev;
	int err;

	err = FUNC3((void *)udev);

	if (err)
		return (-1);

	if (usb_backend != NULL) {
		/*
		 * Enqueue USB device to backend queue so that it gets freed
		 * when the backend is re-scanned:
		 */
		FUNC2(usb_backend, (void *)udev);
	} else {
		/*
		 * The backend is gone. Free device data so that we
		 * don't start leaking memory!
		 */
		dev = FUNC5(udev);
		FUNC4((void *)udev);
		FUNC0(usb_global_bus.devices, dev);
		FUNC1(dev);
	}
	return (0);
}