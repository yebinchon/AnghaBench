#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int sav_count; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_7__ {int sav_count; int /*<<< orphan*/ * sav_vdevs; } ;
struct TYPE_9__ {int spa_async_tasks; int /*<<< orphan*/  spa_async_lock; int /*<<< orphan*/  spa_async_cv; int /*<<< orphan*/ * spa_async_thread_vd; TYPE_2__ spa_spares; TYPE_1__ spa_l2cache; int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCL_NONE ; 
 int SPA_ASYNC_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	spa_t *spa = arg;
	int tasks;

	FUNC1(&spa->spa_async_lock);
	tasks = spa->spa_async_tasks;
retry:
	spa->spa_async_tasks &= ~SPA_ASYNC_REMOVE;
	FUNC2(&spa->spa_async_lock);

	/*
	 * See if any devices need to be marked REMOVED.
	 */
	if (tasks & SPA_ASYNC_REMOVE) {
		FUNC4(spa, SCL_NONE);
		FUNC3(spa, spa->spa_root_vdev);
		for (int i = 0; i < spa->spa_l2cache.sav_count; i++)
			FUNC3(spa, spa->spa_l2cache.sav_vdevs[i]);
		for (int i = 0; i < spa->spa_spares.sav_count; i++)
			FUNC3(spa, spa->spa_spares.sav_vdevs[i]);
		(void) FUNC5(spa, NULL, 0);
	}

	/*
	 * Let the world know that we're done.
	 */
	FUNC1(&spa->spa_async_lock);
	tasks = spa->spa_async_tasks;
	if ((tasks & SPA_ASYNC_REMOVE) != 0)
		goto retry;
	spa->spa_async_thread_vd = NULL;
	FUNC0(&spa->spa_async_cv);
	FUNC2(&spa->spa_async_lock);
	FUNC6();
}