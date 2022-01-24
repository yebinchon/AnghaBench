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
typedef  int uint16_t ;
struct libusb20_device {int /*<<< orphan*/  file_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_OTHER ; 
 int /*<<< orphan*/  USB_GET_POWER_USAGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC2(struct libusb20_device *pdev, uint16_t *power_usage)
{
	int temp;

	if (FUNC1(pdev->file_ctrl, FUNC0(USB_GET_POWER_USAGE), &temp)) {
		return (LIBUSB20_ERROR_OTHER);
	}
	*power_usage = temp;
	return (0);			/* success */
}