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
struct usb_process {int /*<<< orphan*/ * up_mtx; int /*<<< orphan*/  up_drain; int /*<<< orphan*/  up_cv; int /*<<< orphan*/  up_qhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  usb_proc_mtx ; 

__attribute__((used)) static void
FUNC2(struct usb_process *up)
{
	FUNC0(&up->up_qhead);

	FUNC1(&up->up_cv, "-");
	FUNC1(&up->up_drain, "usbdrain");

	up->up_mtx = &usb_proc_mtx;
}