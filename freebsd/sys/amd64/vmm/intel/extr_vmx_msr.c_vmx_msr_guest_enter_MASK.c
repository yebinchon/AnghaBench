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
typedef  int /*<<< orphan*/  uint64_t ;
struct vmx {int /*<<< orphan*/ ** guest_msrs; } ;

/* Variables and functions */
 size_t IDX_MSR_CSTAR ; 
 size_t IDX_MSR_KGSBASE ; 
 size_t IDX_MSR_LSTAR ; 
 size_t IDX_MSR_SF_MASK ; 
 size_t IDX_MSR_STAR ; 
 int /*<<< orphan*/  MSR_CSTAR ; 
 int /*<<< orphan*/  MSR_KGSBASE ; 
 int /*<<< orphan*/  MSR_LSTAR ; 
 int /*<<< orphan*/  MSR_SF_MASK ; 
 int /*<<< orphan*/  MSR_STAR ; 
 int /*<<< orphan*/  curpcb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct vmx *vmx, int vcpuid)
{
	uint64_t *guest_msrs = vmx->guest_msrs[vcpuid];

	/* Save host MSRs (in particular, KGSBASE) and restore guest MSRs */
	FUNC0(curpcb);
	FUNC1(MSR_LSTAR, guest_msrs[IDX_MSR_LSTAR]);
	FUNC1(MSR_CSTAR, guest_msrs[IDX_MSR_CSTAR]);
	FUNC1(MSR_STAR, guest_msrs[IDX_MSR_STAR]);
	FUNC1(MSR_SF_MASK, guest_msrs[IDX_MSR_SF_MASK]);
	FUNC1(MSR_KGSBASE, guest_msrs[IDX_MSR_KGSBASE]);
}