#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_dev_handle ;
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int bNumConfigurations; } ;
struct usb_device {int /*<<< orphan*/ * config; TYPE_1__ descriptor; } ;
struct usb_config_descriptor {int dummy; } ;
struct libusb20_device {TYPE_2__* methods; } ;
struct TYPE_4__ {int (* get_config_desc_full ) (struct libusb20_device*,int**,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct libusb20_device*,int**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 struct usb_device* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 

void
FUNC7(usb_dev_handle * udev)
{
	struct usb_device *dev;
	struct libusb20_device *pdev;
	uint8_t *ptr;
	int error;
	uint32_t size;
	uint16_t len;
	uint8_t x;

	if (udev == NULL) {
		/* be NULL safe */
		return;
	}
	dev = FUNC5(udev);
	pdev = (void *)udev;

	if (dev->descriptor.bNumConfigurations == 0) {
		/* invalid device */
		return;
	}
	size = dev->descriptor.bNumConfigurations *
	    sizeof(struct usb_config_descriptor);

	dev->config = FUNC1(size);
	if (dev->config == NULL) {
		/* out of memory */
		return;
	}
	FUNC2(dev->config, 0, size);

	for (x = 0; x != dev->descriptor.bNumConfigurations; x++) {

		error = (pdev->methods->get_config_desc_full) (
		    pdev, &ptr, &len, x);

		if (error) {
			FUNC4(dev);
			return;
		}
		FUNC6(dev->config + x, ptr);

		/* free config buffer */
		FUNC0(ptr);
	}
	return;
}