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
struct usb_device_info {int dummy; } ;
struct libusb20_device {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_INVALID_PARAM ; 
 int /*<<< orphan*/  USB_GET_DEVICEINFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_device_info*) ; 

__attribute__((used)) static int
FUNC2(struct libusb20_device *pdev,
    struct usb_device_info *pinfo)
{
	if (FUNC1(pdev->file, FUNC0(USB_GET_DEVICEINFO), pinfo)) {
		return (LIBUSB20_ERROR_INVALID_PARAM);
	}
	return (0);
}