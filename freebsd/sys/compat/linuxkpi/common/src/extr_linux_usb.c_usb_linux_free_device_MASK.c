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
struct usb_host_endpoint {int dummy; } ;
struct usb_device {struct usb_host_endpoint* linux_endpoint_start; struct usb_host_endpoint ep0; struct usb_host_endpoint* linux_endpoint_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  FUNC0 (struct usb_host_endpoint*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_device*,struct usb_host_endpoint*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct usb_device *dev)
{
	struct usb_host_endpoint *uhe;
	struct usb_host_endpoint *uhe_end;
	int err;

	uhe = dev->linux_endpoint_start;
	uhe_end = dev->linux_endpoint_end;
	while (uhe != uhe_end) {
		err = FUNC1(dev, uhe, 0);
		uhe++;
	}
	err = FUNC1(dev, &dev->ep0, 0);
	FUNC0(dev->linux_endpoint_start, M_USBDEV);
}