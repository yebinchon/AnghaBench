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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_LOCAL_BASE ; 
 int /*<<< orphan*/  ARM_LOCAL_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  bs_periph ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int mp_ncpus ; 
 scalar_t__ mpentry ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

void
FUNC16(platform_t plat)
{
	uint32_t val;
	int i, retry;

	FUNC4("platform_mp_start_ap\n");

	/* initialize */
	if (FUNC8(fdtbus_bs_tag, ARM_LOCAL_BASE, ARM_LOCAL_SIZE,
	    0, &bs_periph) != 0)
		FUNC11("can't map local peripheral\n");
	for (i = 0; i < mp_ncpus; i++) {
		/* clear mailbox 0/3 */
		FUNC1(FUNC5(i), 0xffffffff);
		FUNC1(FUNC6(i), 0xffffffff);
	}
	FUNC15();
	FUNC9();

	/* boot secondary CPUs */
	for (i = 1; i < mp_ncpus; i++) {
		/* set entry point to mailbox 3 */
		FUNC1(FUNC7(i),
		    (uint32_t)FUNC12((vm_offset_t)mpentry));
		/* Firmware put cores in WFE state, need SEV to wake up. */
		FUNC10();
		FUNC14();

		/* wait for bootup */
		retry = 1000;
		do {
			/* check entry point */
			val = FUNC0(FUNC6(i));
			if (val == 0)
				break;
			FUNC3(100);
			retry--;
			if (retry <= 0) {
				FUNC13("can't start for CPU%d\n", i);
				break;
			}
		} while (1);

		/* dsb and sev */
		FUNC10();
		FUNC14();

		/* recode AP in CPU map */
		FUNC2(i, &all_cpus);
	}
}