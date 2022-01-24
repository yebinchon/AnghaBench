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
struct usb_attach_arg {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_attach_arg umass_uaa ; 

__attribute__((used)) static int
FUNC1(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC0(dev);
	umass_uaa = *uaa;
	return (0);			/* success */
}