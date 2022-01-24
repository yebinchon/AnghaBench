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
typedef  void* uint32_t ;
struct libusb20_transfer {int nFrames; void* timeout; void** pLength; int /*<<< orphan*/ * ppBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

void
FUNC1(struct libusb20_transfer *xfer, void *pBuf, uint32_t length, uint32_t timeout)
{
	xfer->ppBuffer[0] = FUNC0(pBuf);
	xfer->pLength[0] = length;
	xfer->timeout = timeout;
	xfer->nFrames = 1;
	return;
}