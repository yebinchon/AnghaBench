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
struct vlapic {int /*<<< orphan*/  vcpuid; int /*<<< orphan*/  vm; int /*<<< orphan*/  esr_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_LVT_ERROR ; 
 int /*<<< orphan*/  VLAPIC_INTR_ERROR ; 
 scalar_t__ FUNC0 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct vlapic *vlapic, uint32_t mask, bool lvt_error)
{

	vlapic->esr_pending |= mask;

	/*
	 * Avoid infinite recursion if the error LVT itself is configured with
	 * an illegal vector.
	 */
	if (lvt_error)
		return;

	if (FUNC0(vlapic, APIC_LVT_ERROR)) {
		FUNC1(vlapic->vm, vlapic->vcpuid, VLAPIC_INTR_ERROR, 1);
	}
}