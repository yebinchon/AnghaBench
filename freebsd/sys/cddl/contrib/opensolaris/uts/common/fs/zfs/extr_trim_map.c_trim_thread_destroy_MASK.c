#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  spa_trim_lock; int /*<<< orphan*/  spa_trim_cv; int /*<<< orphan*/ * spa_trim_thread; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_trim_enabled ; 

void
FUNC6(spa_t *spa)
{

	if (!zfs_trim_enabled)
		return;
	if (spa->spa_trim_thread == NULL)
		return;

	FUNC4(&spa->spa_trim_lock);
	/* Setting spa_trim_thread to NULL tells the thread to stop. */
	spa->spa_trim_thread = NULL;
	FUNC1(&spa->spa_trim_cv);
	/* The thread will set it back to != NULL on exit. */
	while (spa->spa_trim_thread == NULL)
		FUNC2(&spa->spa_trim_cv, &spa->spa_trim_lock);
	spa->spa_trim_thread = NULL;
	FUNC5(&spa->spa_trim_lock);

	FUNC0(&spa->spa_trim_cv);
	FUNC3(&spa->spa_trim_lock);
}