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
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
#define  APIC_LVT_CMCI 134 
#define  APIC_LVT_ERROR 133 
#define  APIC_LVT_LINT0 132 
#define  APIC_LVT_LINT1 131 
#define  APIC_LVT_PMC 130 
#define  APIC_LVT_THERMAL 129 
#define  APIC_LVT_TIMER 128 
 int EINVAL ; 
 int /*<<< orphan*/  LVTS_TRIGGERRED ; 
 int FUNC0 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int
FUNC5(struct vlapic *vlapic, int vector)
{

	if (FUNC0(vlapic) == false) {
		/*
		 * When the local APIC is global/hardware disabled,
		 * LINT[1:0] pins are configured as INTR and NMI pins,
		 * respectively.
		*/
		switch (vector) {
			case APIC_LVT_LINT0:
				FUNC2(vlapic->vm, vlapic->vcpuid);
				break;
			case APIC_LVT_LINT1:
				FUNC3(vlapic->vm, vlapic->vcpuid);
				break;
			default:
				break;
		}
		return (0);
	}

	switch (vector) {
	case APIC_LVT_LINT0:
	case APIC_LVT_LINT1:
	case APIC_LVT_TIMER:
	case APIC_LVT_ERROR:
	case APIC_LVT_PMC:
	case APIC_LVT_THERMAL:
	case APIC_LVT_CMCI:
		if (FUNC1(vlapic, vector)) {
			FUNC4(vlapic->vm, vlapic->vcpuid,
			    LVTS_TRIGGERRED, vector, 1);
		}
		break;
	default:
		return (EINVAL);
	}
	return (0);
}