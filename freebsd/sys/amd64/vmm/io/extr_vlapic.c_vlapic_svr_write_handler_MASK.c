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
typedef  int uint32_t ;
struct vlapic {int svr_last; int /*<<< orphan*/  callout; struct LAPIC* apic_page; } ;
struct LAPIC {int svr; } ;

/* Variables and functions */
 int APIC_SVR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct vlapic*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlapic*) ; 
 scalar_t__ FUNC6 (struct vlapic*) ; 

void
FUNC7(struct vlapic *vlapic)
{
	struct LAPIC *lapic;
	uint32_t old, new, changed;

	lapic = vlapic->apic_page;

	new = lapic->svr;
	old = vlapic->svr_last;
	vlapic->svr_last = new;

	changed = old ^ new;
	if ((changed & APIC_SVR_ENABLE) != 0) {
		if ((new & APIC_SVR_ENABLE) == 0) {
			/*
			 * The apic is now disabled so stop the apic timer
			 * and mask all the LVT entries.
			 */
			FUNC0(vlapic, "vlapic is software-disabled");
			FUNC1(vlapic);
			FUNC3(&vlapic->callout);
			FUNC2(vlapic);
			FUNC5(vlapic);
		} else {
			/*
			 * The apic is now enabled so restart the apic timer
			 * if it is configured in periodic mode.
			 */
			FUNC0(vlapic, "vlapic is software-enabled");
			if (FUNC6(vlapic))
				FUNC4(vlapic);
		}
	}
}