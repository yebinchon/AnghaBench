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
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 scalar_t__ FUNC0 (struct libusb20_device*,int) ; 

int
FUNC1(struct libusb20_device *pdev, int interface)
{
	if (pdev == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (FUNC0(pdev, interface))
		return (0);		/* no kernel driver is active */
	else
		return (1);		/* kernel driver is active */
}