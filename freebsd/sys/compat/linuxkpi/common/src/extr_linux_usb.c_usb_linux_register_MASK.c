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
struct usb_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linux_driver_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_linux_driver_list ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void *arg)
{
	struct usb_driver *drv = arg;

	FUNC1(&Giant);
	FUNC0(&usb_linux_driver_list, drv, linux_driver_list);
	FUNC2(&Giant);

	FUNC3();
}