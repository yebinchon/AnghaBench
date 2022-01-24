#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int ntasks; int /*<<< orphan*/ ** tasks; int /*<<< orphan*/  quantum; int /*<<< orphan*/  tmgr; int /*<<< orphan*/  mctx; } ;
typedef  TYPE_1__ isc_taskpool_t ;
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 

isc_result_t
FUNC5(isc_taskpool_t **sourcep, unsigned int size,
		    isc_taskpool_t **targetp)
{
	isc_result_t result;
	isc_taskpool_t *pool;

	FUNC0(sourcep != NULL && *sourcep != NULL);
	FUNC0(targetp != NULL && *targetp == NULL);

	pool = *sourcep;
	if (size > pool->ntasks) {
		isc_taskpool_t *newpool = NULL;
		unsigned int i;

		/* Allocate a new pool structure */
		result = FUNC1(pool->tmgr, pool->mctx, size,
				    pool->quantum, &newpool);
		if (result != ISC_R_SUCCESS)
			return (result);

		/* Copy over the tasks from the old pool */
		for (i = 0; i < pool->ntasks; i++) {
			newpool->tasks[i] = pool->tasks[i];
			pool->tasks[i] = NULL;
		}

		/* Create new tasks */
		for (i = pool->ntasks; i < size; i++) {
			result = FUNC2(pool->tmgr, pool->quantum,
						 &newpool->tasks[i]);
			if (result != ISC_R_SUCCESS) {
				FUNC4(&newpool);
				return (result);
			}
			FUNC3(newpool->tasks[i], "taskpool", NULL);
		}

		FUNC4(&pool);
		pool = newpool;
	}

	*sourcep = NULL;
	*targetp = pool;
	return (ISC_R_SUCCESS);
}