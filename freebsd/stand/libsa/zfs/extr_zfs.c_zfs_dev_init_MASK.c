#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* arch_zfs_probe ) () ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ archsw ; 
 int /*<<< orphan*/  spa_link ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  zfs_pools ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(void)
{
	spa_t *spa;
	spa_t *next;
	spa_t *prev;

	FUNC5();
	if (archsw.arch_zfs_probe == NULL)
		return (ENXIO);
	archsw.arch_zfs_probe();

	prev = NULL;
	spa = FUNC0(&zfs_pools);
	while (spa != NULL) {
		next = FUNC1(spa, spa_link);
		if (FUNC6(spa)) {
			if (prev == NULL)
				FUNC3(&zfs_pools, spa_link);
			else
				FUNC2(&zfs_pools, prev, spa_link);
		} else
			prev = spa;
		spa = next;
	}
	return (0);
}