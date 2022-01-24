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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_VMX_EPT_VPID_CAP ; 
 int PMAP_EMULATE_AD_BITS ; 
 int PMAP_NESTED_IPIMASK ; 
 int PMAP_PDE_SUPERPAGE ; 
 int PMAP_SUPPORTS_EXEC_ONLY ; 
 int /*<<< orphan*/  FUNC9 (char*,int*) ; 
 int ept_enable_ad_bits ; 
 int ept_pmap_flags ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(int ipinum)
{
	int use_hw_ad_bits, use_superpages, use_exec_only;
	uint64_t cap;

	cap = FUNC10(MSR_VMX_EPT_VPID_CAP);

	/*
	 * Verify that:
	 * - page walk length is 4 steps
	 * - extended page tables can be laid out in write-back memory
	 * - invvpid instruction with all possible types is supported
	 * - invept instruction with all possible types is supported
	 */
	if (!FUNC3(cap) ||
	    !FUNC1(cap) ||
	    !FUNC8(cap) ||
	    !FUNC7(cap) ||
	    !FUNC6(cap) ||
	    !FUNC5(cap))
		return (EINVAL);

	ept_pmap_flags = ipinum & PMAP_NESTED_IPIMASK;

	use_superpages = 1;
	FUNC9("hw.vmm.ept.use_superpages", &use_superpages);
	if (use_superpages && FUNC2(cap))
		ept_pmap_flags |= PMAP_PDE_SUPERPAGE;	/* 2MB superpage */

	use_hw_ad_bits = 1;
	FUNC9("hw.vmm.ept.use_hw_ad_bits", &use_hw_ad_bits);
	if (use_hw_ad_bits && FUNC0(cap))
		ept_enable_ad_bits = 1;
	else
		ept_pmap_flags |= PMAP_EMULATE_AD_BITS;

	use_exec_only = 1;
	FUNC9("hw.vmm.ept.use_exec_only", &use_exec_only);
	if (use_exec_only && FUNC4(cap))
		ept_pmap_flags |= PMAP_SUPPORTS_EXEC_ONLY;

	return (0);
}