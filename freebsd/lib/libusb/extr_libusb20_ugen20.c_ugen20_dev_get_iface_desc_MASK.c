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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  ugd ;
struct usb_gen_descriptor {void* ugd_iface_index; void* ugd_maxlen; int /*<<< orphan*/  ugd_data; } ;
struct libusb20_device {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_INVALID_PARAM ; 
 int /*<<< orphan*/  USB_GET_IFACE_DRIVER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_gen_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_gen_descriptor*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct libusb20_device *pdev, 
    uint8_t iface_index, char *buf, uint8_t len)
{
	struct usb_gen_descriptor ugd;

	FUNC3(&ugd, 0, sizeof(ugd));

	ugd.ugd_data = FUNC2(buf);
	ugd.ugd_maxlen = len;
	ugd.ugd_iface_index = iface_index;

	if (FUNC1(pdev->file, FUNC0(USB_GET_IFACE_DRIVER), &ugd)) {
		return (LIBUSB20_ERROR_INVALID_PARAM);
	}
	return (0);
}