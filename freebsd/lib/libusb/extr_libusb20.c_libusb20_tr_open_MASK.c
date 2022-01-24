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
typedef  int /*<<< orphan*/  uint32_t ;
struct libusb20_transfer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct libusb20_transfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct libusb20_transfer *xfer, uint32_t MaxBufSize,
    uint32_t MaxFrameCount, uint8_t ep_no)
{
	return (FUNC0(xfer, MaxBufSize, MaxFrameCount, ep_no, 0));
}