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
struct pmcstat_process {int dummy; } ;
struct pmcstat_args {int pa_mergepmc; size_t pa_pplugin; size_t pa_plugin; } ;
struct pmc_plugins {int /*<<< orphan*/  (* pl_init ) () ;} ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PMCSTAT_ALLOCATE ; 
 int PMCSTAT_NHASH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * pmcstat_image_hash ; 
 int /*<<< orphan*/ * pmcstat_process_hash ; 
 struct pmcstat_process* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(struct pmcstat_process **pmcstat_kernproc,
    struct pmcstat_args *args, struct pmc_plugins *plugins,
    int *pmcstat_npmcs, int *pmcstat_mergepmc)
{
	struct pmcstat_process *pmcstat_kp;
	int i;

	/* use a convenient format for 'ldd' output */
	if (FUNC4("LD_TRACE_LOADED_OBJECTS_FMT1","%o \"%p\" %x\n",1) != 0)
		FUNC1(EX_OSERR, "ERROR: Cannot setenv");

	/* Initialize hash tables */
	FUNC3();
	for (i = 0; i < PMCSTAT_NHASH; i++) {
		FUNC0(&pmcstat_image_hash[i]);
		FUNC0(&pmcstat_process_hash[i]);
	}

	/*
	 * Create a fake 'process' entry for the kernel with pid -1.
	 * hwpmc(4) will subsequently inform us about where the kernel
	 * and any loaded kernel modules are mapped.
	 */
	if ((pmcstat_kp = FUNC2((pid_t) -1,
	    PMCSTAT_ALLOCATE)) == NULL)
		FUNC1(EX_OSERR, "ERROR: Cannot initialize logging");

	*pmcstat_kernproc = pmcstat_kp;

	/* PMC count. */
	*pmcstat_npmcs = 0;

	/* Merge PMC with same name. */
	*pmcstat_mergepmc = args->pa_mergepmc;

	/*
	 * Initialize plugins
	 */

	if (plugins[args->pa_pplugin].pl_init != NULL)
		plugins[args->pa_pplugin].pl_init();
	if (plugins[args->pa_plugin].pl_init != NULL)
		plugins[args->pa_plugin].pl_init();
}