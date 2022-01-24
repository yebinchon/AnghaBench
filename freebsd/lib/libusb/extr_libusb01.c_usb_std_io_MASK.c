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
typedef  int uint32_t ;
struct libusb20_transfer {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIMEDOUT ; 
#define  LIBUSB20_TRANSFER_TIMED_OUT 128 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int FUNC2 (struct libusb20_transfer*) ; 
 int FUNC3 (struct libusb20_transfer*) ; 
 int FUNC4 (struct libusb20_transfer*) ; 
 scalar_t__ FUNC5 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_transfer*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct libusb20_transfer*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct libusb20_transfer*) ; 
 struct libusb20_transfer* FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(usb_dev_handle * dev, int ep, char *bytes, int size,
    int timeout, int is_intr)
{
	struct libusb20_transfer *xfer;
	uint32_t temp;
	uint32_t maxsize;
	uint32_t actlen;
	char *oldbytes;

	xfer = FUNC9(dev, ep);
	if (xfer == NULL)
		return (-1);

	if (FUNC5(xfer)) {
		/* there is already a transfer ongoing */
		return (-1);
	}
	maxsize = FUNC3(xfer);
	oldbytes = bytes;

	/*
	 * We allow transferring zero bytes which is the same
	 * equivalent to a zero length USB packet.
	 */
	do {

		temp = size;
		if (temp > maxsize) {
			/* find maximum possible length */
			temp = maxsize;
		}
		if (is_intr)
			FUNC7(xfer, bytes, temp, timeout);
		else
			FUNC6(xfer, bytes, temp, timeout);

		FUNC8(xfer);

		while (1) {

			if (FUNC0((void *)dev) != 0) {
				/* device detached */
				return (-1);
			}
			if (FUNC5(xfer) == 0) {
				/* transfer complete */
				break;
			}
			/* wait for USB event from kernel */
			FUNC1((void *)dev, -1);
		}

		switch (FUNC4(xfer)) {
		case 0:
			/* success */
			break;
		case LIBUSB20_TRANSFER_TIMED_OUT:
			/* transfer timeout */
			return (-ETIMEDOUT);
		default:
			/* other transfer error */
			return (-ENXIO);
		}
		actlen = FUNC2(xfer);

		bytes += actlen;
		size -= actlen;

		if (actlen != temp) {
			/* short transfer */
			break;
		}
	} while (size > 0);

	return (bytes - oldbytes);
}