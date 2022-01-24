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
typedef  int /*<<< orphan*/  temp ;
struct usb_fs_stop {int /*<<< orphan*/  ep_index; } ;
struct libusb20_transfer {TYPE_1__* pdev; int /*<<< orphan*/  trIndex; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_FS_STOP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_fs_stop*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_fs_stop*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct libusb20_transfer *xfer)
{
	struct usb_fs_stop temp;

	FUNC2(&temp, 0, sizeof(temp));

	temp.ep_index = xfer->trIndex;

	if (FUNC1(xfer->pdev->file, FUNC0(USB_FS_STOP), &temp)) {
		/* ignore any errors - should never happen */
	}
	return;
}