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
typedef  int /*<<< orphan*/  usb_dev_handle ;
typedef  int uint16_t ;
struct LIBUSB20_CONTROL_SETUP_DECODED {int bmRequestType; int bRequest; int wValue; int wIndex; int wLength; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIBUSB20_CONTROL_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct LIBUSB20_CONTROL_SETUP_DECODED*) ; 
 int FUNC1 (void*,struct LIBUSB20_CONTROL_SETUP_DECODED*,char*,int*,int,int /*<<< orphan*/ ) ; 

int
FUNC2(usb_dev_handle * dev, int requesttype, int request,
    int value, int wIndex, char *bytes, int size, int timeout)
{
	struct LIBUSB20_CONTROL_SETUP_DECODED req;
	int err;
	uint16_t actlen;

	FUNC0(LIBUSB20_CONTROL_SETUP, &req);

	req.bmRequestType = requesttype;
	req.bRequest = request;
	req.wValue = value;
	req.wIndex = wIndex;
	req.wLength = size;

	err = FUNC1((void *)dev, &req, bytes,
	    &actlen, timeout, 0);

	if (err)
		return (-1);

	return (actlen);
}