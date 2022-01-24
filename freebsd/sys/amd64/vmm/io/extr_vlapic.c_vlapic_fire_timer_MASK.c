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
 int /*<<< orphan*/  APIC_LVT_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,char*) ; 
 int /*<<< orphan*/  VLAPIC_INTR_TIMER ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*) ; 
 scalar_t__ FUNC3 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct vlapic *vlapic)
{

	FUNC0(FUNC2(vlapic), ("vlapic_fire_timer not locked"));

	if (FUNC3(vlapic, APIC_LVT_TIMER)) {
		FUNC1(vlapic, "vlapic timer fired");
		FUNC4(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_TIMER, 1);
	}
}