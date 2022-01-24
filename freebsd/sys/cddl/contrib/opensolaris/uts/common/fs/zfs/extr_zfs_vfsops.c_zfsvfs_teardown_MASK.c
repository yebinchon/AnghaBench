#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ z_sa_hdl; } ;
typedef  TYPE_3__ znode_t ;
struct TYPE_17__ {int /*<<< orphan*/ * z_os; TYPE_2__* z_vfs; int /*<<< orphan*/  z_teardown_lock; int /*<<< orphan*/  z_teardown_inactive_lock; scalar_t__ z_unmounted; int /*<<< orphan*/  z_znodes_lock; int /*<<< orphan*/  z_all_znodes; int /*<<< orphan*/ * z_log; TYPE_1__* z_parent; } ;
typedef  TYPE_4__ zfsvfs_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_15__ {int vfs_flag; } ;
struct TYPE_14__ {int /*<<< orphan*/  z_vfs; } ;
struct TYPE_13__ {scalar_t__ v_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VFS_RDONLY ; 
 TYPE_11__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(zfsvfs_t *zfsvfs, boolean_t unmounting)
{
	znode_t	*zp;

	FUNC13(&zfsvfs->z_teardown_lock, RW_WRITER, FTAG);

	if (!unmounting) {
		/*
		 * We purge the parent filesystem's vfsp as the parent
		 * filesystem and all of its snapshots have their vnode's
		 * v_vfsp set to the parent's filesystem's vfsp.  Note,
		 * 'z_parent' is self referential for non-snapshots.
		 */
		(void) FUNC7(zfsvfs->z_parent->z_vfs, 0);
#ifdef FREEBSD_NAMECACHE
		cache_purgevfs(zfsvfs->z_parent->z_vfs, true);
#endif
	}

	/*
	 * Close the zil. NB: Can't close the zil while zfs_inactive
	 * threads are blocked as zil_close can call zfs_inactive.
	 */
	if (zfsvfs->z_log) {
		FUNC20(zfsvfs->z_log);
		zfsvfs->z_log = NULL;
	}

	FUNC15(&zfsvfs->z_teardown_inactive_lock, RW_WRITER);

	/*
	 * If we are not unmounting (ie: online recv) and someone already
	 * unmounted this file system while we were doing the switcheroo,
	 * or a reopen of z_os failed then just bail out now.
	 */
	if (!unmounting && (zfsvfs->z_unmounted || zfsvfs->z_os == NULL)) {
		FUNC16(&zfsvfs->z_teardown_inactive_lock);
		FUNC14(&zfsvfs->z_teardown_lock, FTAG);
		return (FUNC1(EIO));
	}

	/*
	 * At this point there are no vops active, and any new vops will
	 * fail with EIO since we have z_teardown_lock for writer (only
	 * relavent for forced unmount).
	 *
	 * Release all holds on dbufs.
	 */
	FUNC11(&zfsvfs->z_znodes_lock);
	for (zp = FUNC9(&zfsvfs->z_all_znodes); zp != NULL;
	    zp = FUNC10(&zfsvfs->z_all_znodes, zp))
		if (zp->z_sa_hdl) {
			FUNC0(FUNC2(zp)->v_count >= 0);
			FUNC19(zp);
		}
	FUNC12(&zfsvfs->z_znodes_lock);

	/*
	 * If we are unmounting, set the unmounted flag and let new vops
	 * unblock.  zfs_inactive will have the unmounted behavior, and all
	 * other vops will fail with EIO.
	 */
	if (unmounting) {
		zfsvfs->z_unmounted = B_TRUE;
		FUNC16(&zfsvfs->z_teardown_inactive_lock);
		FUNC14(&zfsvfs->z_teardown_lock, FTAG);
	}

	/*
	 * z_os will be NULL if there was an error in attempting to reopen
	 * zfsvfs, so just return as the properties had already been
	 * unregistered and cached data had been evicted before.
	 */
	if (zfsvfs->z_os == NULL)
		return (0);

	/*
	 * Unregister properties.
	 */
	FUNC18(zfsvfs);

	/*
	 * Evict cached data
	 */
	if (FUNC8(FUNC4(zfsvfs->z_os)) &&
	    !(zfsvfs->z_vfs->vfs_flag & VFS_RDONLY))
		FUNC17(FUNC6(zfsvfs->z_os), 0);
	FUNC5(zfsvfs->z_os);

	return (0);
}