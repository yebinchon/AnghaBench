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
struct TYPE_5__ {int /*<<< orphan*/  spa_dsl_pool; int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_1__ spa_t ;
typedef  scalar_t__ pool_scan_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOTSUP ; 
 scalar_t__ POOL_SCAN_FUNCS ; 
 scalar_t__ POOL_SCAN_NONE ; 
 scalar_t__ POOL_SCAN_RESILVER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_ASYNC_RESILVER_DONE ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(spa_t *spa, pool_scan_func_t func)
{
	FUNC0(FUNC4(spa, SCL_ALL, RW_WRITER) == 0);

	if (func >= POOL_SCAN_FUNCS || func == POOL_SCAN_NONE)
		return (FUNC1(ENOTSUP));

	/*
	 * If a resilver was requested, but there is no DTL on a
	 * writeable leaf device, we have nothing to do.
	 */
	if (func == POOL_SCAN_RESILVER &&
	    !FUNC5(spa->spa_root_vdev, NULL, NULL)) {
		FUNC3(spa, SPA_ASYNC_RESILVER_DONE);
		return (0);
	}

	return (FUNC2(spa->spa_dsl_pool, func));
}