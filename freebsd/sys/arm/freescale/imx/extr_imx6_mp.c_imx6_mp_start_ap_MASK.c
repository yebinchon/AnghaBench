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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int SCU_CONTROL_ENABLE ; 
 scalar_t__ SCU_CONTROL_REG ; 
 scalar_t__ SCU_DIAG_CONTROL ; 
 int SCU_DIAG_DISABLE_MIGBIT ; 
 scalar_t__ SCU_INV_TAGS_REG ; 
 int /*<<< orphan*/  SCU_PHYSBASE ; 
 int /*<<< orphan*/  SCU_SIZE ; 
 int SRC_CONTROL_C1ENA_SHIFT ; 
 int SRC_CONTROL_C1RST_SHIFT ; 
 scalar_t__ SRC_CONTROL_REG ; 
 scalar_t__ SRC_GPR0_C1FUNC ; 
 scalar_t__ SRC_GPR1_C1ARG ; 
 int /*<<< orphan*/  SRC_PHYSBASE ; 
 int /*<<< orphan*/  SRC_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int mp_ncpus ; 
 scalar_t__ mpentry ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(platform_t plat)
{
	bus_space_handle_t scu;
	bus_space_handle_t src;

	uint32_t val;
	int i;

	if (FUNC0(fdtbus_bs_tag, SCU_PHYSBASE, SCU_SIZE, 0, &scu) != 0)
		FUNC6("Couldn't map the SCU\n");
	if (FUNC0(fdtbus_bs_tag, SRC_PHYSBASE, SRC_SIZE, 0, &src) != 0)
		FUNC6("Couldn't map the system reset controller (SRC)\n");

	/*
	 * Invalidate SCU cache tags.  The 0x0000ffff constant invalidates all
	 * ways on all cores 0-3.  Per the ARM docs, it's harmless to write to
	 * the bits for cores that are not present.
	 */
	FUNC3(fdtbus_bs_tag, scu, SCU_INV_TAGS_REG, 0x0000ffff);

	/*
	 * Erratum ARM/MP: 764369 (problems with cache maintenance).
	 * Setting the "disable-migratory bit" in the undocumented SCU
	 * Diagnostic Control Register helps work around the problem.
	 */
	val = FUNC1(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL);
	FUNC3(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL, 
	    val | SCU_DIAG_DISABLE_MIGBIT);

	/*
	 * Enable the SCU, then clean the cache on this core.  After these two
	 * operations the cache tag ram in the SCU is coherent with the contents
	 * of the cache on this core.  The other cores aren't running yet so
	 * their caches can't contain valid data yet, but we've initialized
	 * their SCU tag ram above, so they will be coherent from startup.
	 */
	val = FUNC1(fdtbus_bs_tag, scu, SCU_CONTROL_REG);
	FUNC3(fdtbus_bs_tag, scu, SCU_CONTROL_REG, 
	    val | SCU_CONTROL_ENABLE);
	FUNC4();

	/*
	 * For each AP core, set the entry point address and argument registers,
	 * and set the core-enable and core-reset bits in the control register.
	 */
	val = FUNC1(fdtbus_bs_tag, src, SRC_CONTROL_REG);
	for (i=1; i < mp_ncpus; i++) {
		FUNC3(fdtbus_bs_tag, src, SRC_GPR0_C1FUNC + 8*i,
		    FUNC7((vm_offset_t)mpentry));
		FUNC3(fdtbus_bs_tag, src, SRC_GPR1_C1ARG  + 8*i, 0);

		val |= ((1 << (SRC_CONTROL_C1ENA_SHIFT - 1 + i )) |
		    ( 1 << (SRC_CONTROL_C1RST_SHIFT - 1 + i)));

	}
	FUNC3(fdtbus_bs_tag, src, SRC_CONTROL_REG, val);

	FUNC5();
	FUNC8();

	FUNC2(fdtbus_bs_tag, scu, SCU_SIZE);
	FUNC2(fdtbus_bs_tag, src, SRC_SIZE);
}