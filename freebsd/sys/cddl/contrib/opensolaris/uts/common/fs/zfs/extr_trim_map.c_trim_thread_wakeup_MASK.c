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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_trim_enabled ; 

void
FUNC3(spa_t *spa)
{

	if (!zfs_trim_enabled)
		return;
	if (spa->spa_trim_thread == NULL)
		return;

	FUNC1(&spa->spa_trim_lock);
	FUNC0(&spa->spa_trim_cv);
	FUNC2(&spa->spa_trim_lock);
}