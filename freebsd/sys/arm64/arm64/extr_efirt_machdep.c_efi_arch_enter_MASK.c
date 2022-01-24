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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcast_tlbi_workaround ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  efi_ttbr0 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(void)
{

	FUNC0(curthread);

	/*
	 * Temporarily switch to EFI's page table.  However, we leave curpmap
	 * unchanged in order to prevent its ASID from being reclaimed before
	 * we switch back to its page table in efi_arch_leave().
	 */
	FUNC3(efi_ttbr0);
	if (FUNC1(bcast_tlbi_workaround) != 0)
		FUNC2();

	return (0);
}