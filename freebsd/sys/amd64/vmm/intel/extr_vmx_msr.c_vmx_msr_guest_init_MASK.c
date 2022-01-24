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
struct vmx {int** guest_msrs; } ;

/* Variables and functions */
 size_t IDX_MSR_PAT ; 
 int /*<<< orphan*/  MSR_CSTAR ; 
 int /*<<< orphan*/  MSR_KGSBASE ; 
 int /*<<< orphan*/  MSR_LSTAR ; 
 int /*<<< orphan*/  MSR_SF_MASK ; 
 int /*<<< orphan*/  MSR_STAR ; 
 int /*<<< orphan*/  PAT_UNCACHEABLE ; 
 int /*<<< orphan*/  PAT_UNCACHED ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAT_WRITE_BACK ; 
 int /*<<< orphan*/  PAT_WRITE_THROUGH ; 
 int /*<<< orphan*/  FUNC1 (struct vmx*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct vmx *vmx, int vcpuid)
{
	uint64_t *guest_msrs;

	guest_msrs = vmx->guest_msrs[vcpuid];

	/*
	 * The permissions bitmap is shared between all vcpus so initialize it
	 * once when initializing the vBSP.
	 */
	if (vcpuid == 0) {
		FUNC1(vmx, MSR_LSTAR);
		FUNC1(vmx, MSR_CSTAR);
		FUNC1(vmx, MSR_STAR);
		FUNC1(vmx, MSR_SF_MASK);
		FUNC1(vmx, MSR_KGSBASE);
	}

	/*
	 * Initialize guest IA32_PAT MSR with default value after reset.
	 */
	guest_msrs[IDX_MSR_PAT] = FUNC0(0, PAT_WRITE_BACK) |
	    FUNC0(1, PAT_WRITE_THROUGH)	|
	    FUNC0(2, PAT_UNCACHED)		|
	    FUNC0(3, PAT_UNCACHEABLE)	|
	    FUNC0(4, PAT_WRITE_BACK)	|
	    FUNC0(5, PAT_WRITE_THROUGH)	|
	    FUNC0(6, PAT_UNCACHED)		|
	    FUNC0(7, PAT_UNCACHEABLE);

	return;
}