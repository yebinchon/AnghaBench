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
struct pmc_op_pmcattach {int /*<<< orphan*/  pm_pid; int /*<<< orphan*/  pm_pmc; } ;
typedef  int /*<<< orphan*/  pmc_id_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMCATTACH ; 
 int FUNC0 (int /*<<< orphan*/ ,struct pmc_op_pmcattach*) ; 

int
FUNC1(pmc_id_t pmc, pid_t pid)
{
	struct pmc_op_pmcattach pmc_attach_args;

	pmc_attach_args.pm_pmc = pmc;
	pmc_attach_args.pm_pid = pid;

	return (FUNC0(PMCATTACH, &pmc_attach_args));
}