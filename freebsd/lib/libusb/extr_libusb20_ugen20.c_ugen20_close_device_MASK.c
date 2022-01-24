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
struct usb_fs_uninit {int dummy; } ;
struct libusb20_device {int file; int file_ctrl; int /*<<< orphan*/ * privBeData; scalar_t__ nTransfer; } ;
typedef  int /*<<< orphan*/  fs_uninit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_FS_UNINIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct usb_fs_uninit*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_fs_uninit*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct libusb20_device *pdev)
{
	struct usb_fs_uninit fs_uninit;

	if (pdev->privBeData) {
		FUNC4(&fs_uninit, 0, sizeof(fs_uninit));
		if (FUNC3(pdev->file, FUNC0(USB_FS_UNINIT), &fs_uninit)) {
			/* ignore this error */
		}
		FUNC2(pdev->privBeData);
	}
	pdev->nTransfer = 0;
	pdev->privBeData = NULL;
	FUNC1(pdev->file);
	FUNC1(pdev->file_ctrl);
	pdev->file = -1;
	pdev->file_ctrl = -1;
	return (0);			/* success */
}