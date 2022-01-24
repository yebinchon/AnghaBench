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
struct usb_alt_interface {void* uai_alt_index; void* uai_interface_index; } ;
struct libusb20_device {int /*<<< orphan*/  file_ctrl; } ;
typedef  int /*<<< orphan*/  alt_iface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_OTHER ; 
 int /*<<< orphan*/  USB_SET_ALTINTERFACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_alt_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_alt_interface*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_device*) ; 
 int FUNC4 (struct libusb20_device*) ; 

__attribute__((used)) static int
FUNC5(struct libusb20_device *pdev,
    uint8_t iface_index, uint8_t alt_index)
{
	struct usb_alt_interface alt_iface;

	FUNC2(&alt_iface, 0, sizeof(alt_iface));

	alt_iface.uai_interface_index = iface_index;
	alt_iface.uai_alt_index = alt_index;

	/* release all active USB transfers */
	FUNC3(pdev);

	if (FUNC1(pdev->file_ctrl, FUNC0(USB_SET_ALTINTERFACE), &alt_iface)) {
		return (LIBUSB20_ERROR_OTHER);
	}
	return (FUNC4(pdev));
}