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
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUCFG_P_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int mp_ncpus ; 
 scalar_t__ mpentry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(bus_space_handle_t cpuscfg, bus_space_handle_t cpuxcfg,
    bus_space_handle_t prcm)
{
	int cluster, cpu;

	FUNC0(mp_ncpus <= 4, ("multiple clusters not yet supported"));

	FUNC3();

	FUNC2(fdtbus_bs_tag, cpuscfg, CPUCFG_P_REG0,
	    FUNC4((vm_offset_t)mpentry));

	cluster = 0;
	for (cpu = 1; cpu < mp_ncpus; cpu++)
		FUNC1(cpuscfg, cpuxcfg, prcm, cluster, cpu);
}