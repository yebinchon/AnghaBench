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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCU_CONFIG_REG ; 
 int SCU_CONFIG_REG_NCPU_MASK ; 
 int /*<<< orphan*/  SCU_PHYSBASE ; 
 int /*<<< orphan*/  SCU_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int mp_maxid ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(platform_t plat)
{
	bus_space_handle_t scu;
	int hwcpu, ncpu;
	uint32_t val;

	/* If we've already set the global vars don't bother to do it again. */
	if (mp_ncpus != 0)
		return;

	if (FUNC1(fdtbus_bs_tag, SCU_PHYSBASE, SCU_SIZE, 0, &scu) != 0)
		FUNC4("Couldn't map the SCU\n");
	val = FUNC2(fdtbus_bs_tag, scu, SCU_CONFIG_REG);
	hwcpu = (val & SCU_CONFIG_REG_NCPU_MASK) + 1;
	FUNC3(fdtbus_bs_tag, scu, SCU_SIZE);

	ncpu = hwcpu;
	FUNC0("hw.ncpu", &ncpu);
	if (ncpu < 1 || ncpu > hwcpu)
		ncpu = hwcpu;

	mp_ncpus = ncpu;
	mp_maxid = ncpu - 1;
}