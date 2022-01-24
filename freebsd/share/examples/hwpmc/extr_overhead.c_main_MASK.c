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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  pmc_value_t ;
typedef  int /*<<< orphan*/  pmc_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  PMC_MODE_SC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC10 () ; 

int
FUNC11(int argc, char **argv)
{
	pmc_id_t pmcid;
	pmc_value_t read_value;
	pmc_value_t read_clear_value;
	uint64_t tsc1, write_cyc, start_cyc, read_cyc, stop_cyc;
	char *counter_name;
	
	if (argc != 2)
		FUNC0(EX_USAGE, "counter-name required");

	counter_name = argv[1];
	
	if (FUNC2() != 0)
		FUNC0(EX_OSERR, "hwpmc(4) not loaded, kldload or update your kernel");

	if (FUNC1(counter_name, PMC_MODE_SC, 0, 0, &pmcid, 64*1024) < 0)
		FUNC0(EX_OSERR, "failed to allocate %s as a system counter in counting mode",
		    counter_name);

	tsc1 = FUNC10();
	if (FUNC8(pmcid, 0) < 0)
		FUNC0(EX_OSERR, "failed to zero counter %s", counter_name);
	write_cyc = FUNC10() - tsc1;

	tsc1 = FUNC10();
	if (FUNC6(pmcid) < 0)
		FUNC0(EX_OSERR, "failed to start counter %s", counter_name);
	start_cyc = FUNC10() - tsc1;

	tsc1 = FUNC10();
	if (FUNC3(pmcid, &read_value) < 0)
		FUNC0(EX_OSERR, "failed to read counter %s", counter_name);
	read_cyc = FUNC10() - tsc1;

	tsc1 = FUNC10();
	if (FUNC7(pmcid) < 0)
		FUNC0(EX_OSERR, "failed to stop counter %s", counter_name);
	stop_cyc = FUNC10() - tsc1;
	
	if (FUNC5(pmcid, 0, &read_clear_value))
		FUNC0(EX_OSERR, "failed to read and zero %s", counter_name);

	if (FUNC4(pmcid) < 0)
		FUNC0(EX_OSERR, "failed to release %s as a system counter in counting mode",
		    counter_name);

	FUNC9("Counter %s, read value %ld, read/clear value %ld\n",
	    counter_name, read_value, read_clear_value);
	FUNC9("Cycles to start: %ld\tstop: %ld\tread: %ld\twrite: %ld\n",
	    start_cyc, stop_cyc, read_cyc, stop_cyc);

	return(0);
}