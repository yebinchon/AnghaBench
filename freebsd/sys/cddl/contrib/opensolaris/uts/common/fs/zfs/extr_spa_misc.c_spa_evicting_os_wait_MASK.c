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
struct TYPE_3__ {int /*<<< orphan*/  spa_evicting_os_lock; int /*<<< orphan*/  spa_evicting_os_cv; int /*<<< orphan*/  spa_evicting_os_list; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(spa_t *spa)
{
	FUNC3(&spa->spa_evicting_os_lock);
	while (!FUNC2(&spa->spa_evicting_os_list))
		FUNC0(&spa->spa_evicting_os_cv, &spa->spa_evicting_os_lock);
	FUNC4(&spa->spa_evicting_os_lock);

	FUNC1();
}