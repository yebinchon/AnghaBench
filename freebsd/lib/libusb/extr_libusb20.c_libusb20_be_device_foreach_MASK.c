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
struct libusb20_backend {int /*<<< orphan*/  usb_devs; } ;

/* Variables and functions */
 struct libusb20_device* FUNC0 (int /*<<< orphan*/ *) ; 
 struct libusb20_device* FUNC1 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_entry ; 

struct libusb20_device *
FUNC2(struct libusb20_backend *pbe, struct libusb20_device *pdev)
{
	if (pbe == NULL) {
		pdev = NULL;
	} else if (pdev == NULL) {
		pdev = FUNC0(&(pbe->usb_devs));
	} else {
		pdev = FUNC1(pdev, dev_entry);
	}
	return (pdev);
}