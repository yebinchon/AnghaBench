#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * z_hold_mtx; int /*<<< orphan*/  z_fuid_lock; int /*<<< orphan*/  z_teardown_inactive_lock; int /*<<< orphan*/  z_teardown_lock; int /*<<< orphan*/  z_all_znodes; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_znodes_lock; } ;
typedef  TYPE_1__ zfsvfs_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int ZFS_OBJ_MTX_SZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  zfsvfs_lock ; 

void
FUNC8(zfsvfs_t *zfsvfs)
{
	int i;

	/*
	 * This is a barrier to prevent the filesystem from going away in
	 * zfs_znode_move() until we can safely ensure that the filesystem is
	 * not unmounted. We consider the filesystem valid before the barrier
	 * and invalid after the barrier.
	 */
	FUNC5(&zfsvfs_lock, RW_READER);
	FUNC6(&zfsvfs_lock);

	FUNC7(zfsvfs);

	FUNC2(&zfsvfs->z_znodes_lock);
	FUNC2(&zfsvfs->z_lock);
	FUNC1(&zfsvfs->z_all_znodes);
	FUNC3(&zfsvfs->z_teardown_lock);
	FUNC4(&zfsvfs->z_teardown_inactive_lock);
	FUNC4(&zfsvfs->z_fuid_lock);
	for (i = 0; i != ZFS_OBJ_MTX_SZ; i++)
		FUNC2(&zfsvfs->z_hold_mtx[i]);
	FUNC0(zfsvfs, sizeof (zfsvfs_t));
}