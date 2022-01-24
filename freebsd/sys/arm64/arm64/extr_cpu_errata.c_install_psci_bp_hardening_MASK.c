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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMCCC_ARCH_WORKAROUND_1 ; 
 scalar_t__ SMCCC_RET_SUCCESS ; 
 int /*<<< orphan*/  bp_harden ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smccc_arch_workaround_1 ; 

__attribute__((used)) static void
FUNC2(void)
{

	if (FUNC1(SMCCC_ARCH_WORKAROUND_1) != SMCCC_RET_SUCCESS)
		return;

	FUNC0(bp_harden, smccc_arch_workaround_1);
}