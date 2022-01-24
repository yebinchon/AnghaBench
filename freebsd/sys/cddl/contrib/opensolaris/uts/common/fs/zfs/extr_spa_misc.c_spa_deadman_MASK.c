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
struct TYPE_3__ {int spa_sync_starttime; int /*<<< orphan*/  spa_deadman_cycid; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_deadman_calls; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  CY_INFINITY ; 
 int MILLISEC ; 
 int NANOSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int hz ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int zfs_deadman_checktime_ms ; 
 scalar_t__ zfs_deadman_enabled ; 

__attribute__((used)) static void
FUNC7(void *arg, int pending)
{
	spa_t *spa = arg;

	/*
	 * Disable the deadman timer if the pool is suspended.
	 */
	if (FUNC4(spa)) {
#ifdef illumos
		VERIFY(cyclic_reprogram(spa->spa_deadman_cycid, CY_INFINITY));
#else
		/* Nothing.  just don't schedule any future callouts. */
#endif
		return;
	}

	FUNC6("slow spa_sync: started %llu seconds ago, calls %llu",
	    (FUNC3() - spa->spa_sync_starttime) / NANOSEC,
	    ++spa->spa_deadman_calls);
	if (zfs_deadman_enabled)
		FUNC5(spa->spa_root_vdev);
#ifdef __FreeBSD__
#ifdef _KERNEL
	callout_schedule(&spa->spa_deadman_cycid,
	    hz * zfs_deadman_checktime_ms / MILLISEC);
#endif
#endif
}