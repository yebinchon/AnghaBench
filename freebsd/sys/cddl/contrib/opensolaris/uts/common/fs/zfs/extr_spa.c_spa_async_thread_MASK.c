#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_14__ {int spa_async_tasks; int /*<<< orphan*/  spa_async_lock; int /*<<< orphan*/  spa_async_cv; int /*<<< orphan*/ * spa_async_thread; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_dsl_pool; int /*<<< orphan*/  spa_sync_on; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int SPA_ASYNC_AUTOEXPAND ; 
 int SPA_ASYNC_CONFIG_UPDATE ; 
 int SPA_ASYNC_INITIALIZE_RESTART ; 
 int SPA_ASYNC_PROBE ; 
 int SPA_ASYNC_REMOVE ; 
 int SPA_ASYNC_RESILVER ; 
 int SPA_ASYNC_RESILVER_DONE ; 
 int /*<<< orphan*/  SPA_CONFIG_UPDATE_POOL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(void *arg)
{
	spa_t *spa = (spa_t *)arg;
	int tasks;

	FUNC0(spa->spa_sync_on);

	FUNC4(&spa->spa_async_lock);
	tasks = spa->spa_async_tasks;
	spa->spa_async_tasks &= SPA_ASYNC_REMOVE;
	FUNC5(&spa->spa_async_lock);

	/*
	 * See if the config needs to be updated.
	 */
	if (tasks & SPA_ASYNC_CONFIG_UPDATE) {
		uint64_t old_space, new_space;

		FUNC4(&spa_namespace_lock);
		old_space = FUNC3(FUNC13(spa));
		FUNC10(spa, SPA_CONFIG_UPDATE_POOL);
		new_space = FUNC3(FUNC13(spa));
		FUNC5(&spa_namespace_lock);

		/*
		 * If the pool grew as a result of the config update,
		 * then log an internal history event.
		 */
		if (new_space != old_space) {
			FUNC11(spa, "vdev online", NULL,
			    "pool '%s' size: %llu(+%llu)",
			    FUNC12(spa), new_space, new_space - old_space);
		}
	}

	if ((tasks & SPA_ASYNC_AUTOEXPAND) && !FUNC14(spa)) {
		FUNC8(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC6(spa, spa->spa_root_vdev);
		FUNC9(spa, SCL_CONFIG, FTAG);
	}

	/*
	 * See if any devices need to be probed.
	 */
	if (tasks & SPA_ASYNC_PROBE) {
		FUNC16(spa, SCL_NONE);
		FUNC7(spa, spa->spa_root_vdev);
		(void) FUNC17(spa, NULL, 0);
	}

	/*
	 * If any devices are done replacing, detach them.
	 */
	if (tasks & SPA_ASYNC_RESILVER_DONE)
		FUNC15(spa);

	/*
	 * Kick off a resilver.
	 */
	if (tasks & SPA_ASYNC_RESILVER)
		FUNC2(spa->spa_dsl_pool, 0);

	if (tasks & SPA_ASYNC_INITIALIZE_RESTART) {
		FUNC4(&spa_namespace_lock);
		FUNC8(spa, SCL_CONFIG, FTAG, RW_READER);
		FUNC19(spa->spa_root_vdev);
		FUNC9(spa, SCL_CONFIG, FTAG);
		FUNC5(&spa_namespace_lock);
	}

	/*
	 * Let the world know that we're done.
	 */
	FUNC4(&spa->spa_async_lock);
	spa->spa_async_thread = NULL;
	FUNC1(&spa->spa_async_cv);
	FUNC5(&spa->spa_async_lock);
	FUNC18();
}