#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* z_os; TYPE_7__* z_vfs; int /*<<< orphan*/  z_replay; int /*<<< orphan*/  z_log; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int boolean_t ;
struct TYPE_13__ {int vfs_flag; } ;
struct TYPE_12__ {int /*<<< orphan*/  os_user_ptr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int VFS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_get_data ; 
 int FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  zfs_replay_vector ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ zil_replay_disable ; 

__attribute__((used)) static int
FUNC10(zfsvfs_t *zfsvfs, boolean_t mounting)
{
	int error;

	error = FUNC5(zfsvfs->z_vfs);
	if (error)
		return (error);

	zfsvfs->z_log = FUNC8(zfsvfs->z_os, zfs_get_data);

	/*
	 * If we are not mounting (ie: online recv), then we don't
	 * have to worry about replaying the log as we blocked all
	 * operations out since we closed the ZIL.
	 */
	if (mounting) {
		boolean_t readonly;

		/*
		 * During replay we remove the read only flag to
		 * allow replays to succeed.
		 */
		readonly = zfsvfs->z_vfs->vfs_flag & VFS_RDONLY;
		if (readonly != 0)
			zfsvfs->z_vfs->vfs_flag &= ~VFS_RDONLY;
		else
			FUNC6(zfsvfs);

		/*
		 * Parse and replay the intent log.
		 *
		 * Because of ziltest, this must be done after
		 * zfs_unlinked_drain().  (Further note: ziltest
		 * doesn't use readonly mounts, where
		 * zfs_unlinked_drain() isn't called.)  This is because
		 * ziltest causes spa_sync() to think it's committed,
		 * but actually it is not, so the intent log contains
		 * many txg's worth of changes.
		 *
		 * In particular, if object N is in the unlinked set in
		 * the last txg to actually sync, then it could be
		 * actually freed in a later txg and then reallocated
		 * in a yet later txg.  This would write a "create
		 * object N" record to the intent log.  Normally, this
		 * would be fine because the spa_sync() would have
		 * written out the fact that object N is free, before
		 * we could write the "create object N" intent log
		 * record.
		 *
		 * But when we are in ziltest mode, we advance the "open
		 * txg" without actually spa_sync()-ing the changes to
		 * disk.  So we would see that object N is still
		 * allocated and in the unlinked set, and there is an
		 * intent log record saying to allocate it.
		 */
		if (FUNC4(FUNC1(zfsvfs->z_os))) {
			if (zil_replay_disable) {
				FUNC7(zfsvfs->z_log, B_FALSE);
			} else {
				zfsvfs->z_replay = B_TRUE;
				FUNC9(zfsvfs->z_os, zfsvfs,
				    zfs_replay_vector);
				zfsvfs->z_replay = B_FALSE;
			}
		}
		zfsvfs->z_vfs->vfs_flag |= readonly; /* restore readonly bit */
	}

	/*
	 * Set the objset user_ptr to track its zfsvfs.
	 */
	FUNC2(&zfsvfs->z_os->os_user_ptr_lock);
	FUNC0(zfsvfs->z_os, zfsvfs);
	FUNC3(&zfsvfs->z_os->os_user_ptr_lock);

	return (0);
}