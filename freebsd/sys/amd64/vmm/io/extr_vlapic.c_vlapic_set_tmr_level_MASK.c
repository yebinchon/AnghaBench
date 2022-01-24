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
typedef  int /*<<< orphan*/  uint32_t ;
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int APIC_DELMODE_FIXED ; 
 int APIC_DELMODE_LOWPRIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vlapic*,int,int) ; 

void
FUNC5(struct vlapic *vlapic, uint32_t dest, bool phys,
    int delmode, int vector)
{
	cpuset_t dmask;
	bool lowprio;

	FUNC1(vector >= 0 && vector <= 255, ("invalid vector %d", vector));

	/*
	 * A level trigger is valid only for fixed and lowprio delivery modes.
	 */
	if (delmode != APIC_DELMODE_FIXED && delmode != APIC_DELMODE_LOWPRIO) {
		FUNC2(vlapic, "Ignoring level trigger-mode for "
		    "delivery-mode %d", delmode);
		return;
	}

	lowprio = (delmode == APIC_DELMODE_LOWPRIO);
	FUNC3(vlapic->vm, &dmask, dest, phys, lowprio, false);

	if (!FUNC0(vlapic->vcpuid, &dmask))
		return;

	FUNC2(vlapic, "vector %d set to level-triggered", vector);
	FUNC4(vlapic, vector, true);
}