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

/* Variables and functions */
 int /*<<< orphan*/  USB_SET_IMMED ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int*) ; 

int
FUNC2(int fd, int enable)
{
	int ret;
	ret = FUNC1(fd, USB_SET_IMMED, &enable);
#ifdef HID_COMPAT7
	if (ret < 0)
		ret = hid_set_immed_compat7(fd, enable);
#endif
	return (ret);
}