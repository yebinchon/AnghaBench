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
struct vlapic {scalar_t__ vcpuid; int msr_apicbase; int /*<<< orphan*/  callout; int /*<<< orphan*/  timer_mtx; int /*<<< orphan*/ * apic_page; int /*<<< orphan*/ * vm; } ;

/* Variables and functions */
 int APICBASE_BSP ; 
 int APICBASE_ENABLED ; 
 int DEFAULT_APIC_BASE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct vlapic *vlapic)
{
	FUNC0(vlapic->vm != NULL, ("vlapic_init: vm is not initialized"));
	FUNC0(vlapic->vcpuid >= 0 &&
	    vlapic->vcpuid < FUNC4(vlapic->vm),
	    ("vlapic_init: vcpuid is not initialized"));
	FUNC0(vlapic->apic_page != NULL, ("vlapic_init: apic_page is not "
	    "initialized"));

	/*
	 * If the vlapic is configured in x2apic mode then it will be
	 * accessed in the critical section via the MSR emulation code.
	 *
	 * Therefore the timer mutex must be a spinlock because blockable
	 * mutexes cannot be acquired in a critical section.
	 */
	FUNC2(&vlapic->timer_mtx, "vlapic timer mtx", NULL, MTX_SPIN);
	FUNC1(&vlapic->callout, 1);

	vlapic->msr_apicbase = DEFAULT_APIC_BASE | APICBASE_ENABLED;

	if (vlapic->vcpuid == 0)
		vlapic->msr_apicbase |= APICBASE_BSP;

	FUNC3(vlapic);
}