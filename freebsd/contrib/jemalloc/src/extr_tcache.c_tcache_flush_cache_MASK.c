#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_14__ {scalar_t__ prof_accumbytes; int /*<<< orphan*/ * arena; } ;
typedef  TYPE_2__ tcache_t ;
struct TYPE_13__ {scalar_t__ nrequests; } ;
struct TYPE_15__ {TYPE_1__ tstats; } ;
typedef  TYPE_3__ cache_bin_t ;

/* Variables and functions */
 unsigned int NBINS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ config_prof ; 
 scalar_t__ config_stats ; 
 unsigned int nhbins ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,unsigned int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,unsigned int) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(tsd_t *tsd, tcache_t *tcache) {
	FUNC1(tcache->arena != NULL);

	for (unsigned i = 0; i < NBINS; i++) {
		cache_bin_t *tbin = FUNC6(tcache, i);
		FUNC4(tsd, tcache, tbin, i, 0);

		if (config_stats) {
			FUNC1(tbin->tstats.nrequests == 0);
		}
	}
	for (unsigned i = NBINS; i < nhbins; i++) {
		cache_bin_t *tbin = FUNC5(tcache, i);
		FUNC3(tsd, tbin, i, 0, tcache);

		if (config_stats) {
			FUNC1(tbin->tstats.nrequests == 0);
		}
	}

	if (config_prof && tcache->prof_accumbytes > 0 &&
	    FUNC0(FUNC7(tsd), tcache->arena,
	    tcache->prof_accumbytes)) {
		FUNC2(FUNC7(tsd));
	}
}