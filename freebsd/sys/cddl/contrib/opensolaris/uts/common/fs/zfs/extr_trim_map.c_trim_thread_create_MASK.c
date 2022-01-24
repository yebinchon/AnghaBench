#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  spa_trim_lock; int /*<<< orphan*/  spa_trim_thread; int /*<<< orphan*/  spa_trim_cv; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  TS_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minclsyspri ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p0 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trim_thread ; 
 int /*<<< orphan*/  zfs_trim_enabled ; 

void
FUNC5(spa_t *spa)
{

	if (!zfs_trim_enabled)
		return;

	FUNC3(&spa->spa_trim_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&spa->spa_trim_cv, NULL, CV_DEFAULT, NULL);
	FUNC1(&spa->spa_trim_lock);
	spa->spa_trim_thread = FUNC4(NULL, 0, trim_thread, spa, 0, &p0,
	    TS_RUN, minclsyspri);
	FUNC2(&spa->spa_trim_lock);
}