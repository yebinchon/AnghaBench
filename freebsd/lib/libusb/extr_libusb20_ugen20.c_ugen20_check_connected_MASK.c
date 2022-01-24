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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ plugtime; } ;
struct libusb20_device {TYPE_1__ session_data; int /*<<< orphan*/  file_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_NO_DEVICE ; 
 int /*<<< orphan*/  USB_GET_PLUGTIME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC2(struct libusb20_device *pdev)
{
	uint32_t plugtime;
	int error = 0;

	if (FUNC1(pdev->file_ctrl, FUNC0(USB_GET_PLUGTIME), &plugtime)) {
		error = LIBUSB20_ERROR_NO_DEVICE;
		goto done;
	}

	if (pdev->session_data.plugtime != plugtime) {
		error = LIBUSB20_ERROR_NO_DEVICE;
		goto done;
	}
done:
	return (error);
}