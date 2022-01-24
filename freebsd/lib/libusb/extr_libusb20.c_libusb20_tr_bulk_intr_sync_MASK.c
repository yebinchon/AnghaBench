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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct libusb20_transfer {struct libusb20_device* pdev; } ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIBUSB20_ERROR_OTHER ; 
 scalar_t__ FUNC0 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*,int) ; 
 scalar_t__ FUNC2 (struct libusb20_transfer*) ; 
 scalar_t__ FUNC3 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_transfer*) ; 
 scalar_t__ FUNC5 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_transfer*,void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct libusb20_transfer*) ; 

uint8_t
FUNC8(struct libusb20_transfer *xfer,
    void *pbuf, uint32_t length, uint32_t *pactlen,
    uint32_t timeout)
{
	struct libusb20_device *pdev = xfer->pdev;
	uint32_t transfer_max;
	uint32_t transfer_act;
	uint8_t retval;

	/* set some sensible default value */
	if (pactlen != NULL)
		*pactlen = 0;

	/* check for error condition */
	if (FUNC5(xfer))
		return (LIBUSB20_ERROR_OTHER);

	do {
		/* compute maximum transfer length */
		transfer_max = 
		    FUNC3(xfer);

		if (transfer_max > length)
			transfer_max = length;

		/* setup bulk or interrupt transfer */
		FUNC6(xfer, pbuf, 
		    transfer_max, timeout);

		/* start the transfer */
		FUNC7(xfer);

		/* wait for transfer completion */
		while (FUNC0(pdev) == 0) {

			if (FUNC5(xfer) == 0)
				break;

			FUNC1(pdev, -1);
		}

		transfer_act = FUNC2(xfer);

		/* update actual length, if any */
		if (pactlen != NULL)
			pactlen[0] += transfer_act;

		/* check transfer status */
		retval = FUNC4(xfer);
		if (retval)
			break;

		/* check for short transfer */
		if (transfer_act != transfer_max)
			break;

		/* update buffer pointer and length */
		pbuf = ((uint8_t *)pbuf) + transfer_max;
		length = length - transfer_max;

	} while (length != 0);

	return (retval);
}