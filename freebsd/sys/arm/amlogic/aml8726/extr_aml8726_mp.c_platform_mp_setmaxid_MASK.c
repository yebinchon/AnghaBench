#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
struct TYPE_5__ {int /*<<< orphan*/  r_bushandle; void* r_bustag; } ;
struct TYPE_4__ {int /*<<< orphan*/  r_bushandle; void* r_bustag; } ;
struct TYPE_6__ {int errata_764369; TYPE_2__ cbus_res; TYPE_1__ aobus_res; int /*<<< orphan*/  cpucfg_size; int /*<<< orphan*/  cpucfg_res; int /*<<< orphan*/  scu_size; int /*<<< orphan*/  scu_res; } ;

/* Variables and functions */
 int AML_SCU_CONFIG_NCPU_MASK ; 
 int /*<<< orphan*/  AML_SCU_CONFIG_REG ; 
 int /*<<< orphan*/  AML_SOC_AOBUS_BASE_ADDR ; 
 int /*<<< orphan*/  AML_SOC_CBUS_BASE_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ aml8726_smp ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpucfg_compatible ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int mp_maxid ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  scu_compatible ; 
 scalar_t__* scu_errata_764369 ; 

void
FUNC6(void)
{
	int err;
	int i;
	int ncpu;
	phandle_t cpucfg_node;
	phandle_t scu_node;
	uint32_t value;

	if (mp_ncpus != 0)
		return;

	ncpu = 1;

	/*
	 * Is the hardware necessary for SMP present?
	 */

	if ((scu_node = FUNC4("scu", scu_compatible)) == 0)
		goto moveon;

	if ((cpucfg_node = FUNC4("cpuconfig",
	    cpucfg_compatible)) == 0)
		goto moveon;

	if (FUNC1(scu_node, &aml8726_smp.scu_res,
	    &aml8726_smp.scu_size) != 0)
		FUNC5("Could not allocate resource for SCU");

	if (FUNC1(cpucfg_node, &aml8726_smp.cpucfg_res,
	    &aml8726_smp.cpucfg_size) != 0)
		FUNC5("Could not allocate resource for CPUCONFIG");


	/*
	 * Strictly speaking the aobus and cbus may not be required in
	 * order to start an AP (it depends on the processor), however
	 * always mapping them in simplifies the code.
	 */

	aml8726_smp.aobus_res.r_bustag = fdtbus_bs_tag;

	err = FUNC2(aml8726_smp.aobus_res.r_bustag,
	    AML_SOC_AOBUS_BASE_ADDR, 0x100000,
	    0, &aml8726_smp.aobus_res.r_bushandle);

	if (err)
		FUNC5("Could not allocate resource for AOBUS");

	aml8726_smp.cbus_res.r_bustag = fdtbus_bs_tag;

	err = FUNC2(aml8726_smp.cbus_res.r_bustag,
	    AML_SOC_CBUS_BASE_ADDR, 0x100000,
	    0, &aml8726_smp.cbus_res.r_bushandle);

	if (err)
		FUNC5("Could not allocate resource for CBUS");

	aml8726_smp.errata_764369 = false;
	for (i = 0; scu_errata_764369[i]; i++)
		if (FUNC3(scu_node, scu_errata_764369[i])) {
			aml8726_smp.errata_764369 = true;
			break;
		}

	/*
	 * Read the number of CPUs present.
	 */
	value = FUNC0(AML_SCU_CONFIG_REG);
	ncpu = (value & AML_SCU_CONFIG_NCPU_MASK) + 1;

moveon:
	mp_ncpus = ncpu;
	mp_maxid = ncpu - 1;
}