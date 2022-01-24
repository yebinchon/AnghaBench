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
typedef  size_t u_int ;
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; int /*<<< orphan*/ * lvt_last; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ESR_SEND_ILLEGAL_VECTOR ; 
 int APIC_LVT_DM ; 
#define  APIC_LVT_DM_EXTINT 130 
#define  APIC_LVT_DM_FIXED 129 
#define  APIC_LVT_DM_NMI 128 
 size_t APIC_LVT_ERROR ; 
 int APIC_LVT_M ; 
 int APIC_LVT_VECTOR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vlapic *vlapic, u_int lvt)
{
	uint32_t mode, reg, vec;

	reg = FUNC0(&vlapic->lvt_last[lvt]);

	if (reg & APIC_LVT_M)
		return (0);
	vec = reg & APIC_LVT_VECTOR;
	mode = reg & APIC_LVT_DM;

	switch (mode) {
	case APIC_LVT_DM_FIXED:
		if (vec < 16) {
			FUNC2(vlapic, APIC_ESR_SEND_ILLEGAL_VECTOR,
			    lvt == APIC_LVT_ERROR);
			return (0);
		}
		if (FUNC3(vlapic, vec, false))
			FUNC1(vlapic->vm, vlapic->vcpuid, true);
		break;
	case APIC_LVT_DM_NMI:
		FUNC5(vlapic->vm, vlapic->vcpuid);
		break;
	case APIC_LVT_DM_EXTINT:
		FUNC4(vlapic->vm, vlapic->vcpuid);
		break;
	default:
		// Other modes ignored
		return (0);
	}
	return (1);
}