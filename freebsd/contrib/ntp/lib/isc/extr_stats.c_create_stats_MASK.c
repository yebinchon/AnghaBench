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
typedef  int /*<<< orphan*/  isc_uint64_t ;
struct TYPE_5__ {int references; int ncounters; int /*<<< orphan*/  lock; struct TYPE_5__* copiedcounters; struct TYPE_5__* counters; int /*<<< orphan*/  magic; int /*<<< orphan*/ * mctx; int /*<<< orphan*/  counterlock; } ;
typedef  TYPE_1__ isc_stats_t ;
typedef  int /*<<< orphan*/  isc_stat_t ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_STATS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static isc_result_t
FUNC8(isc_mem_t *mctx, int ncounters, isc_stats_t **statsp) {
	isc_stats_t *stats;
	isc_result_t result = ISC_R_SUCCESS;

	FUNC1(statsp != NULL && *statsp == NULL);

	stats = FUNC3(mctx, sizeof(*stats));
	if (stats == NULL)
		return (ISC_R_NOMEMORY);

	result = FUNC5(&stats->lock);
	if (result != ISC_R_SUCCESS)
		goto clean_stats;

	stats->counters = FUNC3(mctx, sizeof(isc_stat_t) * ncounters);
	if (stats->counters == NULL) {
		result = ISC_R_NOMEMORY;
		goto clean_mutex;
	}
	stats->copiedcounters = FUNC3(mctx,
					    sizeof(isc_uint64_t) * ncounters);
	if (stats->copiedcounters == NULL) {
		result = ISC_R_NOMEMORY;
		goto clean_counters;
	}

#ifdef ISC_RWLOCK_USEATOMIC
	result = isc_rwlock_init(&stats->counterlock, 0, 0);
	if (result != ISC_R_SUCCESS)
		goto clean_copiedcounters;
#endif

	stats->references = 1;
	FUNC7(stats->counters, 0, sizeof(isc_stat_t) * ncounters);
	stats->mctx = NULL;
	FUNC2(mctx, &stats->mctx);
	stats->ncounters = ncounters;
	stats->magic = ISC_STATS_MAGIC;

	*statsp = stats;

	return (result);

clean_counters:
	FUNC4(mctx, stats->counters, sizeof(isc_stat_t) * ncounters);

#ifdef ISC_RWLOCK_USEATOMIC
clean_copiedcounters:
	isc_mem_put(mctx, stats->copiedcounters,
		    sizeof(isc_stat_t) * ncounters);
#endif

clean_mutex:
	FUNC0(&stats->lock);

clean_stats:
	FUNC4(mctx, stats, sizeof(*stats));

	return (result);
}