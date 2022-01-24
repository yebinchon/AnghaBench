#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int spa_vdev_locks; int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_WRITER ; 
 int SCL_STATE_ALL ; 
 int SCL_ZIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(spa_t *spa, int oplocks)
{
	int locks = SCL_STATE_ALL | oplocks;

	/*
	 * Root pools may need to read of the underlying devfs filesystem
	 * when opening up a vdev.  Unfortunately if we're holding the
	 * SCL_ZIO lock it will result in a deadlock when we try to issue
	 * the read from the root filesystem.  Instead we "prefetch"
	 * the associated vnodes that we need prior to opening the
	 * underlying devices and cache them so that we can prevent
	 * any I/O when we are doing the actual open.
	 */
	if (FUNC1(spa)) {
		int low = locks & ~(SCL_ZIO - 1);
		int high = locks & ~low;

		FUNC0(spa, high, spa, RW_WRITER);
		FUNC2(spa->spa_root_vdev);
		FUNC0(spa, low, spa, RW_WRITER);
	} else {
		FUNC0(spa, locks, spa, RW_WRITER);
	}
	spa->spa_vdev_locks = locks;
}