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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcast_tlbi_workaround ; 
 int /*<<< orphan*/  curpmap ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{

	/*
	 * Restore the pcpu pointer. Some UEFI implementations trash it and
	 * we don't store it before calling into them. To fix this we need
	 * to restore it after returning to the kernel context. As reading
	 * curpmap will access x18 we need to restore it before loading
	 * the pmap pointer.
	 */
	__asm __volatile(
	    "mrs x18, tpidr_el1	\n"
	);
	FUNC3(FUNC2(FUNC0(curpmap)));
	if (FUNC0(bcast_tlbi_workaround) != 0)
		FUNC1();
}