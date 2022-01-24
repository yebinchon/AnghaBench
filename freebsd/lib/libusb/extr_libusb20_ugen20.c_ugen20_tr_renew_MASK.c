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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct usb_fs_init {int ep_index_max; int /*<<< orphan*/  pEndpoints; } ;
struct usb_fs_endpoint {int ep_index_max; int /*<<< orphan*/  pEndpoints; } ;
struct libusb20_device {int nTransfer; int /*<<< orphan*/  file; struct usb_fs_init* privBeData; } ;
typedef  int /*<<< orphan*/  fs_init ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_NO_MEM ; 
 int LIBUSB20_ERROR_OTHER ; 
 int /*<<< orphan*/  USB_FS_INIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_fs_init*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_fs_init*) ; 
 struct usb_fs_init* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_fs_init*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct libusb20_device *pdev)
{
	struct usb_fs_init fs_init;
	struct usb_fs_endpoint *pfse;
	int error;
	uint32_t size;
	uint16_t nMaxTransfer;

	nMaxTransfer = pdev->nTransfer;
	error = 0;

	if (nMaxTransfer == 0) {
		goto done;
	}
	size = nMaxTransfer * sizeof(*pfse);

	if (pdev->privBeData == NULL) {
		pfse = FUNC3(size);
		if (pfse == NULL) {
			error = LIBUSB20_ERROR_NO_MEM;
			goto done;
		}
		pdev->privBeData = pfse;
	}
	/* reset endpoint data */
	FUNC4(pdev->privBeData, 0, size);

	FUNC4(&fs_init, 0, sizeof(fs_init));

	fs_init.pEndpoints = FUNC2(pdev->privBeData);
	fs_init.ep_index_max = nMaxTransfer;

	if (FUNC1(pdev->file, FUNC0(USB_FS_INIT), &fs_init)) {
		error = LIBUSB20_ERROR_OTHER;
		goto done;
	}
done:
	return (error);
}