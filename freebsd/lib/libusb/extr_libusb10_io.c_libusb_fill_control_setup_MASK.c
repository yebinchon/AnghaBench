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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct libusb_control_setup {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bmRequestType; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(uint8_t *buf, uint8_t bmRequestType,
    uint8_t bRequest, uint16_t wValue,
    uint16_t wIndex, uint16_t wLength)
{
	struct libusb_control_setup *req = (struct libusb_control_setup *)buf;

	/* The alignment is OK for all fields below. */
	req->bmRequestType = bmRequestType;
	req->bRequest = bRequest;
	req->wValue = FUNC0(wValue);
	req->wIndex = FUNC0(wIndex);
	req->wLength = FUNC0(wLength);
}