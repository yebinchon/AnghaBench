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
typedef  int uint16_t ;

/* Variables and functions */
 int PROCBASED2_ENABLE_VPID ; 
 int VM_MAXCPU ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int procbased_ctls2 ; 
 int /*<<< orphan*/  vpid_alloc_failed ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  vpid_unr ; 

__attribute__((used)) static void
FUNC4(uint16_t *vpid, int num)
{
	int i, x;

	if (num <= 0 || num > VM_MAXCPU)
		FUNC2("invalid number of vpids requested: %d", num);

	/*
	 * If the "enable vpid" execution control is not enabled then the
	 * VPID is required to be 0 for all vcpus.
	 */
	if ((procbased_ctls2 & PROCBASED2_ENABLE_VPID) == 0) {
		for (i = 0; i < num; i++)
			vpid[i] = 0;
		return;
	}

	/*
	 * Allocate a unique VPID for each vcpu from the unit number allocator.
	 */
	for (i = 0; i < num; i++) {
		x = FUNC0(vpid_unr);
		if (x == -1)
			break;
		else
			vpid[i] = x;
	}

	if (i < num) {
		FUNC1(&vpid_alloc_failed, 1);

		/*
		 * If the unit number allocator does not have enough unique
		 * VPIDs then we need to allocate from the [1,VM_MAXCPU] range.
		 *
		 * These VPIDs are not be unique across VMs but this does not
		 * affect correctness because the combined mappings are also
		 * tagged with the EP4TA which is unique for each VM.
		 *
		 * It is still sub-optimal because the invvpid will invalidate
		 * combined mappings for a particular VPID across all EP4TAs.
		 */
		while (i-- > 0)
			FUNC3(vpid[i]);

		for (i = 0; i < num; i++)
			vpid[i] = i + 1;
	}
}