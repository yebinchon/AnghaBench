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
struct libusb20_transfer {int dummy; } ;

/* Variables and functions */
#define  LIBUSB20_TRANSFER_START 128 
 int FUNC0 (struct libusb20_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_transfer*) ; 

__attribute__((used)) static void
FUNC2(struct libusb20_transfer *xfer)
{
	;				/* style fix */
	switch (FUNC0(xfer)) {
	case LIBUSB20_TRANSFER_START:
		FUNC1(xfer);
		break;
	default:
		/* complete or error */
		break;
	}
	return;
}