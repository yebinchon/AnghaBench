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
typedef  int uint64_t ;
typedef  int u_int64_t ;

/* Variables and functions */
 int EFER_SCE ; 
 int /*<<< orphan*/  GCODE_SEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUCODE32_SEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_CSTAR ; 
 int /*<<< orphan*/  MSR_EFER ; 
 int /*<<< orphan*/  MSR_LSTAR ; 
 int /*<<< orphan*/  MSR_SF_MASK ; 
 int /*<<< orphan*/  MSR_STAR ; 
 int PSL_AC ; 
 int PSL_C ; 
 int PSL_D ; 
 int PSL_I ; 
 int PSL_NT ; 
 int PSL_T ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  SEL_UPL ; 
 int /*<<< orphan*/  fast_syscall ; 
 int /*<<< orphan*/  fast_syscall32 ; 
 int /*<<< orphan*/  fast_syscall_pti ; 
 scalar_t__ pti ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4(void)
{
	uint64_t msr;

	msr = FUNC2(MSR_EFER) | EFER_SCE;
	FUNC3(MSR_EFER, msr);
	FUNC3(MSR_LSTAR, pti ? (u_int64_t)FUNC1(fast_syscall_pti) :
	    (u_int64_t)FUNC1(fast_syscall));
	FUNC3(MSR_CSTAR, (u_int64_t)FUNC1(fast_syscall32));
	msr = ((u_int64_t)FUNC0(GCODE_SEL, SEL_KPL) << 32) |
	    ((u_int64_t)FUNC0(GUCODE32_SEL, SEL_UPL) << 48);
	FUNC3(MSR_STAR, msr);
	FUNC3(MSR_SF_MASK, PSL_NT | PSL_T | PSL_I | PSL_C | PSL_D | PSL_AC);
}