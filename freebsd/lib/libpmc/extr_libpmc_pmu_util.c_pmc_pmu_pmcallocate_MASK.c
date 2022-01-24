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
struct pmu_event_desc {int dummy; } ;
struct pmu_event {char const* alias; int /*<<< orphan*/ * event; } ;
struct pmc_op_pmcallocate {int pm_caps; int pm_ev; int /*<<< orphan*/  pm_md; } ;
typedef  scalar_t__ pmu_mfr_t ;

/* Variables and functions */
 int ENOENT ; 
 int PMC_CAP_READ ; 
 int PMC_CAP_WRITE ; 
 scalar_t__ PMU_INTEL ; 
 scalar_t__ PMU_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char const*,struct pmc_op_pmcallocate*,struct pmu_event_desc*) ; 
 int FUNC3 (char const*,struct pmc_op_pmcallocate*,struct pmu_event_desc*) ; 
 char* FUNC4 (char const*) ; 
 struct pmu_event* FUNC5 (int /*<<< orphan*/ *,char const*,int*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (struct pmu_event_desc*,int /*<<< orphan*/ *) ; 

int
FUNC8(const char *event_name, struct pmc_op_pmcallocate *pm)
{
	const struct pmu_event *pe;
	struct pmu_event_desc ped;
	pmu_mfr_t mfr;
	int idx = -1;

	if ((mfr = FUNC6()) == PMU_INVALID)
		return (ENOENT);

	FUNC1(&pm->pm_md, sizeof(pm->pm_md));
	pm->pm_caps |= (PMC_CAP_READ | PMC_CAP_WRITE);
	event_name = FUNC4(event_name);
	if ((pe = FUNC5(NULL, event_name, &idx)) == NULL)
		return (ENOENT);
	if (pe->alias && (pe = FUNC5(NULL, pe->alias, &idx)) == NULL)
		return (ENOENT);
	FUNC0(idx >= 0);
	pm->pm_ev = idx;

	if (pe->event == NULL)
		return (ENOENT);
	if (FUNC7(&ped, pe->event))
		return (ENOENT);

	if (mfr == PMU_INTEL)
		return (FUNC3(event_name, pm, &ped));
	else
		return (FUNC2(event_name, pm, &ped));
}