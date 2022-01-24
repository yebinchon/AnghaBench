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
struct libusb_device_head {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  libusb_device ;
typedef  int /*<<< orphan*/  libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libusb_device_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hotplug_entry ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 

__attribute__((used)) static int
FUNC3(libusb_context *ctx, struct libusb_device_head *phead)
{
	libusb_device **ppdev;
	ssize_t count;
	ssize_t x;

	count = FUNC2(ctx, &ppdev);
	if (count < 0)
		return (-1);

	for (x = 0; x != count; x++)
		FUNC0(phead, ppdev[x], hotplug_entry);

	FUNC1(ppdev, 0);
	return (0);
}