#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_9__ {int dthps_nprovs; size_t dthps_maxprovs; TYPE_2__** dthps_provs; } ;
typedef  TYPE_1__ dtrace_helpers_t ;
struct TYPE_11__ {scalar_t__ dofhp_addr; } ;
struct TYPE_10__ {int dthp_ref; int dthp_generation; TYPE_3__ dthp_prov; } ;
typedef  TYPE_2__ dtrace_helper_provider_t ;
typedef  TYPE_3__ dof_helper_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EALREADY ; 
 int ENOSPC ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__**,size_t) ; 
 int dtrace_helper_providers_max ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,size_t) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(dof_helper_t *dofhp, dtrace_helpers_t *help, int gen)
{
	dtrace_helper_provider_t *hprov, **tmp_provs;
	uint_t tmp_maxprovs, i;

	FUNC0(FUNC1(&dtrace_lock));
	FUNC0(help != NULL);

	/*
	 * If we already have dtrace_helper_providers_max helper providers,
	 * we're refuse to add a new one.
	 */
	if (help->dthps_nprovs >= dtrace_helper_providers_max)
		return (ENOSPC);

	/*
	 * Check to make sure this isn't a duplicate.
	 */
	for (i = 0; i < help->dthps_nprovs; i++) {
		if (dofhp->dofhp_addr ==
		    help->dthps_provs[i]->dthp_prov.dofhp_addr)
			return (EALREADY);
	}

	hprov = FUNC4(sizeof (dtrace_helper_provider_t), KM_SLEEP);
	hprov->dthp_prov = *dofhp;
	hprov->dthp_ref = 1;
	hprov->dthp_generation = gen;

	/*
	 * Allocate a bigger table for helper providers if it's already full.
	 */
	if (help->dthps_maxprovs == help->dthps_nprovs) {
		tmp_maxprovs = help->dthps_maxprovs;
		tmp_provs = help->dthps_provs;

		if (help->dthps_maxprovs == 0)
			help->dthps_maxprovs = 2;
		else
			help->dthps_maxprovs *= 2;
		if (help->dthps_maxprovs > dtrace_helper_providers_max)
			help->dthps_maxprovs = dtrace_helper_providers_max;

		FUNC0(tmp_maxprovs < help->dthps_maxprovs);

		help->dthps_provs = FUNC4(help->dthps_maxprovs *
		    sizeof (dtrace_helper_provider_t *), KM_SLEEP);

		if (tmp_provs != NULL) {
			FUNC2(tmp_provs, help->dthps_provs, tmp_maxprovs *
			    sizeof (dtrace_helper_provider_t *));
			FUNC3(tmp_provs, tmp_maxprovs *
			    sizeof (dtrace_helper_provider_t *));
		}
	}

	help->dthps_provs[help->dthps_nprovs] = hprov;
	help->dthps_nprovs++;

	return (0);
}