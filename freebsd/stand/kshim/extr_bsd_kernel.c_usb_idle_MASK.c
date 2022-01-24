#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int owned; } ;

/* Variables and functions */
 TYPE_1__ Giant ; 
 int USB_PROC_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  usb_pci_root ; 
 int usb_proc_level ; 
 scalar_t__ usb_process ; 

void
FUNC2(void)
{
	int old_level = usb_proc_level;
	int old_giant = Giant.owned;
	int worked;

	FUNC0(usb_pci_root);

	do {
		worked = 0;
		Giant.owned = 0;

		while (++usb_proc_level < USB_PROC_MAX)
			worked |= FUNC1(usb_process + usb_proc_level);

		usb_proc_level = old_level;
		Giant.owned = old_giant;

	} while (worked);
}