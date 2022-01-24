#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  ctl_stats_t ;
struct TYPE_6__ {unsigned int narenas; int /*<<< orphan*/  destroyed; } ;
typedef  TYPE_1__ ctl_arenas_t ;
struct TYPE_7__ {int initialized; } ;
typedef  TYPE_2__ ctl_arena_t ;

/* Variables and functions */
 unsigned int MALLCTL_ARENAS_ALL ; 
 unsigned int MALLCTL_ARENAS_DESTROYED ; 
 int /*<<< orphan*/  QUANTUM ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ config_stats ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* ctl_arenas ; 
 int ctl_initialized ; 
 int /*<<< orphan*/  ctl_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ctl_stats ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC10(tsd_t *tsd) {
	bool ret;
	tsdn_t *tsdn = FUNC9(tsd);

	FUNC5(tsdn, &ctl_mtx);
	if (!ctl_initialized) {
		ctl_arena_t *ctl_sarena, *ctl_darena;
		unsigned i;

		/*
		 * Allocate demand-zeroed space for pointers to the full
		 * range of supported arena indices.
		 */
		if (ctl_arenas == NULL) {
			ctl_arenas = (ctl_arenas_t *)FUNC2(tsdn,
			    FUNC1(), sizeof(ctl_arenas_t), QUANTUM);
			if (ctl_arenas == NULL) {
				ret = true;
				goto label_return;
			}
		}

		if (config_stats && ctl_stats == NULL) {
			ctl_stats = (ctl_stats_t *)FUNC2(tsdn, FUNC1(),
			    sizeof(ctl_stats_t), QUANTUM);
			if (ctl_stats == NULL) {
				ret = true;
				goto label_return;
			}
		}

		/*
		 * Allocate space for the current full range of arenas
		 * here rather than doing it lazily elsewhere, in order
		 * to limit when OOM-caused errors can occur.
		 */
		if ((ctl_sarena = FUNC0(tsd, MALLCTL_ARENAS_ALL, false,
		    true)) == NULL) {
			ret = true;
			goto label_return;
		}
		ctl_sarena->initialized = true;

		if ((ctl_darena = FUNC0(tsd, MALLCTL_ARENAS_DESTROYED,
		    false, true)) == NULL) {
			ret = true;
			goto label_return;
		}
		FUNC3(ctl_darena);
		/*
		 * Don't toggle ctl_darena to initialized until an arena is
		 * actually destroyed, so that arena.<i>.initialized can be used
		 * to query whether the stats are relevant.
		 */

		ctl_arenas->narenas = FUNC7();
		for (i = 0; i < ctl_arenas->narenas; i++) {
			if (FUNC0(tsd, i, false, true) == NULL) {
				ret = true;
				goto label_return;
			}
		}

		FUNC8(&ctl_arenas->destroyed);
		FUNC4(tsdn);

		ctl_initialized = true;
	}

	ret = false;
label_return:
	FUNC6(tsdn, &ctl_mtx);
	return ret;
}