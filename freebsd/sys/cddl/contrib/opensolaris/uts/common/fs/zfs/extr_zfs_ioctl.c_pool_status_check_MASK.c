#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int zfs_ioc_poolcheck_t ;
typedef  scalar_t__ zfs_ioc_namecheck_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DATASET_NAME ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ ENTITY_NAME ; 
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  FTAG ; 
 int POOL_CHECK_NONE ; 
 int POOL_CHECK_READONLY ; 
 int POOL_CHECK_SUSPENDED ; 
 scalar_t__ POOL_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(const char *name, zfs_ioc_namecheck_t type,
    zfs_ioc_poolcheck_t check)
{
	spa_t *spa;
	int error;

	FUNC0(type == POOL_NAME || type == DATASET_NAME ||
	    type == ENTITY_NAME);

	if (check & POOL_CHECK_NONE)
		return (0);

	error = FUNC3(name, &spa, FTAG);
	if (error == 0) {
		if ((check & POOL_CHECK_SUSPENDED) && FUNC4(spa))
			error = FUNC1(EAGAIN);
		else if ((check & POOL_CHECK_READONLY) && !FUNC5(spa))
			error = FUNC1(EROFS);
		FUNC2(spa, FTAG);
	}
	return (error);
}