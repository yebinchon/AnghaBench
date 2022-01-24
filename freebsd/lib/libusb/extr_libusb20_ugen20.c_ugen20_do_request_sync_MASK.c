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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_ctl_request {int /*<<< orphan*/  ucr_actlen; int /*<<< orphan*/  ucr_request; int /*<<< orphan*/  ucr_flags; int /*<<< orphan*/  ucr_data; } ;
struct libusb20_device {int /*<<< orphan*/  file_ctrl; } ;
struct LIBUSB20_CONTROL_SETUP_DECODED {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_OTHER ; 
 int LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK ; 
 int /*<<< orphan*/  USB_DO_REQUEST ; 
 int /*<<< orphan*/  USB_SHORT_XFER_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_ctl_request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,struct LIBUSB20_CONTROL_SETUP_DECODED*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ctl_request*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct libusb20_device *pdev,
    struct LIBUSB20_CONTROL_SETUP_DECODED *setup,
    void *data, uint16_t *pactlen, uint32_t timeout, uint8_t flags)
{
	struct usb_ctl_request req;

	FUNC4(&req, 0, sizeof(req));

	req.ucr_data = FUNC3(data);
	if (!(flags & LIBUSB20_TRANSFER_SINGLE_SHORT_NOT_OK)) {
		req.ucr_flags |= USB_SHORT_XFER_OK;
	}
	if (FUNC2(&req.ucr_request,
	    sizeof(req.ucr_request), setup)) {
		/* ignore */
	}
	if (FUNC1(pdev->file_ctrl, FUNC0(USB_DO_REQUEST), &req)) {
		return (LIBUSB20_ERROR_OTHER);
	}
	if (pactlen) {
		/* get actual length */
		*pactlen = req.ucr_actlen;
	}
	return (0);			/* request was successful */
}