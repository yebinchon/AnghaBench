#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * z_log; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct TYPE_10__ {TYPE_1__* vfs_data; } ;
typedef  TYPE_2__ vfs_t ;
struct TYPE_11__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;

/* Variables and functions */
 int MNT_LAZY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ panicstr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ sys_shutdown ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(vfs_t *vfsp, int waitfor)
{

	/*
	 * Data integrity is job one.  We don't want a compromised kernel
	 * writing to the storage pool, so we never sync during panic.
	 */
	if (panicstr)
		return (0);

	/*
	 * Ignore the system syncher.  ZFS already commits async data
	 * at zfs_txg_timeout intervals.
	 */
	if (waitfor == MNT_LAZY)
		return (0);

	if (vfsp != NULL) {
		/*
		 * Sync a specific filesystem.
		 */
		zfsvfs_t *zfsvfs = vfsp->vfs_data;
		dsl_pool_t *dp;
		int error;

		error = FUNC5(vfsp, waitfor);
		if (error != 0)
			return (error);

		FUNC0(zfsvfs);
		dp = FUNC2(zfsvfs->z_os);

		/*
		 * If the system is shutting down, then skip any
		 * filesystems which may exist on a suspended pool.
		 */
		if (sys_shutdown && FUNC3(dp->dp_spa)) {
			FUNC1(zfsvfs);
			return (0);
		}

		if (zfsvfs->z_log != NULL)
			FUNC6(zfsvfs->z_log, 0);

		FUNC1(zfsvfs);
	} else {
		/*
		 * Sync all ZFS filesystems.  This is what happens when you
		 * run sync(1M).  Unlike other filesystems, ZFS honors the
		 * request by waiting for all pools to commit all dirty data.
		 */
		FUNC4();
	}

	return (0);
}