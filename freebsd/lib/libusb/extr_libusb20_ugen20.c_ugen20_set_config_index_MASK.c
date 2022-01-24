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
typedef  int uint8_t ;
struct libusb20_device {int /*<<< orphan*/  file_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_OTHER ; 
 int /*<<< orphan*/  USB_SET_CONFIG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_device*) ; 
 int FUNC3 (struct libusb20_device*) ; 

__attribute__((used)) static int
FUNC4(struct libusb20_device *pdev, uint8_t cfg_index)
{
	int temp = cfg_index;

	/* release all active USB transfers */
	FUNC2(pdev);

	if (FUNC1(pdev->file_ctrl, FUNC0(USB_SET_CONFIG), &temp)) {
		return (LIBUSB20_ERROR_OTHER);
	}
	return (FUNC3(pdev));
}