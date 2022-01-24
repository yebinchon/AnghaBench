#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ references; int ncounters; int /*<<< orphan*/  mctx; int /*<<< orphan*/  counterlock; int /*<<< orphan*/  lock; int /*<<< orphan*/  counters; int /*<<< orphan*/  copiedcounters; } ;
typedef  TYPE_1__ isc_stats_t ;
typedef  int /*<<< orphan*/  isc_stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(isc_stats_t **statsp) {
	isc_stats_t *stats;

	FUNC3(statsp != NULL && FUNC1(*statsp));

	stats = *statsp;
	*statsp = NULL;

	FUNC2(&stats->lock);
	stats->references--;
	FUNC4(&stats->lock);

	if (stats->references == 0) {
		FUNC5(stats->mctx, stats->copiedcounters,
			    sizeof(isc_stat_t) * stats->ncounters);
		FUNC5(stats->mctx, stats->counters,
			    sizeof(isc_stat_t) * stats->ncounters);
		FUNC0(&stats->lock);
#ifdef ISC_RWLOCK_USEATOMIC
		isc_rwlock_destroy(&stats->counterlock);
#endif
		FUNC6(&stats->mctx, stats, sizeof(*stats));
	}
}