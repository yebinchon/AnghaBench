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

/* Variables and functions */
 int USB_ENDPOINT_DIR_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*,int,int,int /*<<< orphan*/ ) ; 

int
FUNC1(usb_dev_handle * dev, int ep, char *bytes,
    int size, int timeout)
{
	return (FUNC0(dev, ep | USB_ENDPOINT_DIR_MASK,
	    bytes, size, timeout, 0));
}