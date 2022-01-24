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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_long ;
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_DTLB_TAG_READ_REG ; 
 scalar_t__ CPU_IMPL_SPARC64V ; 
 scalar_t__ CPU_IMPL_ULTRASPARCIII ; 
 scalar_t__ PSTATE_IE ; 
 scalar_t__ TD_PA_CH_MASK ; 
 scalar_t__ TD_PA_SF_MASK ; 
 scalar_t__ TD_PA_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ cpu_impl ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ dtlb_slot_max ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  tlb_locked ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_offset_t
FUNC6(vm_offset_t va)
{
	u_long pstate, reg;
	u_int i, tlb;

	pstate = FUNC4(pstate);
	FUNC5(pstate, pstate & ~PSTATE_IE, 0);
	for (i = 0; i < dtlb_slot_max; i++) {
		reg = FUNC3(FUNC0(tlb_locked, i),
		    ASI_DTLB_TAG_READ_REG);
		if (FUNC1(reg) != va)
			continue;
		reg = FUNC2(tlb_locked, i);
		FUNC5(pstate, pstate, 0);
		reg >>= TD_PA_SHIFT;
		if (cpu_impl == CPU_IMPL_SPARC64V ||
		    cpu_impl >= CPU_IMPL_ULTRASPARCIII)
			return (reg & TD_PA_CH_MASK);
		return (reg & TD_PA_SF_MASK);
	}
	FUNC5(pstate, pstate, 0);
	return (-1);
}