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
typedef  int /*<<< orphan*/  uintfptr_t ;
struct pmcstat_stats {int /*<<< orphan*/  ps_exec_indeterminable; int /*<<< orphan*/  ps_exec_aout; int /*<<< orphan*/  ps_exec_elf; int /*<<< orphan*/  ps_exec_errors; } ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_image {int pi_type; } ;
struct pmcstat_args {int dummy; } ;
struct pmc_plugins {int dummy; } ;
typedef  int /*<<< orphan*/  pmcstat_interned_string ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
#define  PMCSTAT_IMAGE_AOUT 131 
#define  PMCSTAT_IMAGE_ELF32 130 
#define  PMCSTAT_IMAGE_ELF64 129 
#define  PMCSTAT_IMAGE_INDETERMINABLE 128 
 int PMCSTAT_IMAGE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcstat_image*,struct pmcstat_args*) ; 
 struct pmcstat_image* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pmcstat_args*,struct pmc_plugins*) ; 
 int /*<<< orphan*/  FUNC4 (struct pmcstat_process*,struct pmcstat_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcstat_process*,struct pmcstat_image*,int /*<<< orphan*/ ,struct pmcstat_args*,struct pmc_plugins*,struct pmcstat_stats*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct pmcstat_process *pp,
    pmcstat_interned_string path, uintfptr_t entryaddr,
    struct pmcstat_args *args, struct pmc_plugins *plugins,
    struct pmcstat_stats *pmcstat_stats)
{
	struct pmcstat_image *image;

	if ((image = FUNC3(path, 0,
	    args, plugins)) == NULL) {
		pmcstat_stats->ps_exec_errors++;
		return;
	}

	if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
		FUNC2(image, args);

	FUNC0(image->pi_type != PMCSTAT_IMAGE_UNKNOWN);

	switch (image->pi_type) {
	case PMCSTAT_IMAGE_ELF32:
	case PMCSTAT_IMAGE_ELF64:
		pmcstat_stats->ps_exec_elf++;
		FUNC5(pp, image, entryaddr,
		    args, plugins, pmcstat_stats);
		break;

	case PMCSTAT_IMAGE_AOUT:
		pmcstat_stats->ps_exec_aout++;
		FUNC4(pp, image, entryaddr);
		break;

	case PMCSTAT_IMAGE_INDETERMINABLE:
		pmcstat_stats->ps_exec_indeterminable++;
		break;

	default:
		FUNC1(EX_SOFTWARE,
		    "ERROR: Unsupported executable type for \"%s\"",
		    FUNC6(path));
	}
}