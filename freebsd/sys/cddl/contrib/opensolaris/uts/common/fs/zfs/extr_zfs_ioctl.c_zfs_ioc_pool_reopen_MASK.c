#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
struct TYPE_9__ {int /*<<< orphan*/  spa_scrub_reopen; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_dsl_pool; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc)
{
	spa_t *spa;
	int error;

	error = FUNC2(zc->zc_name, &spa, FTAG);
	if (error != 0)
		return (error);

	FUNC3(spa, SCL_NONE);

	/*
	 * If a resilver is already in progress then set the
	 * spa_scrub_reopen flag to B_TRUE so that we don't restart
	 * the scan as a side effect of the reopen. Otherwise, let
	 * vdev_open() decided if a resilver is required.
	 */
	spa->spa_scrub_reopen = FUNC0(spa->spa_dsl_pool);
	FUNC5(spa->spa_root_vdev);
	spa->spa_scrub_reopen = B_FALSE;

	(void) FUNC4(spa, NULL, 0);
	FUNC1(spa, FTAG);
	return (0);
}