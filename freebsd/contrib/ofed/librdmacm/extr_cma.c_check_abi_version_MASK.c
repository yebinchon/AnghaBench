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

/* Variables and functions */
 scalar_t__ RDMA_USER_CM_MAX_ABI_VERSION ; 
 scalar_t__ RDMA_USER_CM_MIN_ABI_VERSION ; 
 scalar_t__ abi_ver ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(void)
{
	char value[8];

	if ((FUNC1(FUNC0(),
				 "class/misc/rdma_cm/abi_version",
				 value, sizeof value) < 0) &&
	    (FUNC1(FUNC0(),
				 "class/infiniband_ucma/abi_version",
				 value, sizeof value) < 0)) {
		/*
		 * Older version of Linux do not have class/misc.  To support
		 * backports, assume the most recent version of the ABI.  If
		 * we're wrong, we'll simply fail later when calling the ABI.
		 */
		return 0;
	}

	abi_ver = FUNC2(value, NULL, 10);
	if (abi_ver < RDMA_USER_CM_MIN_ABI_VERSION ||
	    abi_ver > RDMA_USER_CM_MAX_ABI_VERSION) {
		return -1;
	}
	return 0;
}