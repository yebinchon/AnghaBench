#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/ * z_os; struct TYPE_21__* vfs_data; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  TYPE_1__ vfs_t ;
typedef  void* uint64_t ;
struct dsl_dataset {int dummy; } ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  MNTOPT_ATIME ; 
 int /*<<< orphan*/  MNTOPT_EXEC ; 
 int /*<<< orphan*/  MNTOPT_NBMAND ; 
 int /*<<< orphan*/  MNTOPT_NOATIME ; 
 int /*<<< orphan*/  MNTOPT_NOEXEC ; 
 int /*<<< orphan*/  MNTOPT_NONBMAND ; 
 int /*<<< orphan*/  MNTOPT_NOSETUID ; 
 int /*<<< orphan*/  MNTOPT_NOSUID ; 
 int /*<<< orphan*/  MNTOPT_NOXATTR ; 
 int /*<<< orphan*/  MNTOPT_RO ; 
 int /*<<< orphan*/  MNTOPT_RW ; 
 int /*<<< orphan*/  MNTOPT_SETUID ; 
 int /*<<< orphan*/  MNTOPT_XATTR ; 
 int /*<<< orphan*/  ZFS_PROP_ACLINHERIT ; 
 int /*<<< orphan*/  ZFS_PROP_ACLMODE ; 
 int /*<<< orphan*/  ZFS_PROP_ATIME ; 
 int /*<<< orphan*/  ZFS_PROP_DEVICES ; 
 int /*<<< orphan*/  ZFS_PROP_EXEC ; 
 int /*<<< orphan*/  ZFS_PROP_READONLY ; 
 int /*<<< orphan*/  ZFS_PROP_RECORDSIZE ; 
 int /*<<< orphan*/  ZFS_PROP_SETUID ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPDIR ; 
 int /*<<< orphan*/  ZFS_PROP_VSCAN ; 
 int /*<<< orphan*/  ZFS_PROP_XATTR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*) ; 
 struct dsl_dataset* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct dsl_dataset*,char*,void**) ; 
 int FUNC13 (struct dsl_dataset*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_1__*,void*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct dsl_dataset*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(vfs_t *vfsp)
{
	struct dsl_dataset *ds = NULL;
	objset_t *os = NULL;
	zfsvfs_t *zfsvfs = NULL;
	uint64_t nbmand;
	boolean_t readonly = B_FALSE;
	boolean_t do_readonly = B_FALSE;
	boolean_t setuid = B_FALSE;
	boolean_t do_setuid = B_FALSE;
	boolean_t exec = B_FALSE;
	boolean_t do_exec = B_FALSE;
#ifdef illumos
	boolean_t devices = B_FALSE;
	boolean_t do_devices = B_FALSE;
#endif
	boolean_t xattr = B_FALSE;
	boolean_t do_xattr = B_FALSE;
	boolean_t atime = B_FALSE;
	boolean_t do_atime = B_FALSE;
	int error = 0;

	FUNC0(vfsp);
	zfsvfs = vfsp->vfs_data;
	FUNC0(zfsvfs);
	os = zfsvfs->z_os;

	/*
	 * This function can be called for a snapshot when we update snapshot's
	 * mount point, which isn't really supported.
	 */
	if (FUNC7(os))
		return (EOPNOTSUPP);

	/*
	 * The act of registering our callbacks will destroy any mount
	 * options we may have.  In order to enable temporary overrides
	 * of mount options, we stash away the current values and
	 * restore them after we register the callbacks.
	 */
	if (FUNC21(vfsp, MNTOPT_RO, NULL) ||
	    !FUNC20(FUNC9(os))) {
		readonly = B_TRUE;
		do_readonly = B_TRUE;
	} else if (FUNC21(vfsp, MNTOPT_RW, NULL)) {
		readonly = B_FALSE;
		do_readonly = B_TRUE;
	}
	if (FUNC21(vfsp, MNTOPT_NOSUID, NULL)) {
		setuid = B_FALSE;
		do_setuid = B_TRUE;
	} else {
		if (FUNC21(vfsp, MNTOPT_NOSETUID, NULL)) {
			setuid = B_FALSE;
			do_setuid = B_TRUE;
		} else if (FUNC21(vfsp, MNTOPT_SETUID, NULL)) {
			setuid = B_TRUE;
			do_setuid = B_TRUE;
		}
	}
	if (FUNC21(vfsp, MNTOPT_NOEXEC, NULL)) {
		exec = B_FALSE;
		do_exec = B_TRUE;
	} else if (FUNC21(vfsp, MNTOPT_EXEC, NULL)) {
		exec = B_TRUE;
		do_exec = B_TRUE;
	}
	if (FUNC21(vfsp, MNTOPT_NOXATTR, NULL)) {
		xattr = B_FALSE;
		do_xattr = B_TRUE;
	} else if (FUNC21(vfsp, MNTOPT_XATTR, NULL)) {
		xattr = B_TRUE;
		do_xattr = B_TRUE;
	}
	if (FUNC21(vfsp, MNTOPT_NOATIME, NULL)) {
		atime = B_FALSE;
		do_atime = B_TRUE;
	} else if (FUNC21(vfsp, MNTOPT_ATIME, NULL)) {
		atime = B_TRUE;
		do_atime = B_TRUE;
	}

	/*
	 * We need to enter pool configuration here, so that we can use
	 * dsl_prop_get_int_ds() to handle the special nbmand property below.
	 * dsl_prop_get_integer() can not be used, because it has to acquire
	 * spa_namespace_lock and we can not do that because we already hold
	 * z_teardown_lock.  The problem is that spa_write_cachefile() is called
	 * with spa_namespace_lock held and the function calls ZFS vnode
	 * operations to write the cache file and thus z_teardown_lock is
	 * acquired after spa_namespace_lock.
	 */
	ds = FUNC6(os);
	FUNC10(FUNC8(os), FTAG);

	/*
	 * nbmand is a special property.  It can only be changed at
	 * mount time.
	 *
	 * This is weird, but it is documented to only be changeable
	 * at mount time.
	 */
	if (FUNC21(vfsp, MNTOPT_NONBMAND, NULL)) {
		nbmand = B_FALSE;
	} else if (FUNC21(vfsp, MNTOPT_NBMAND, NULL)) {
		nbmand = B_TRUE;
	} else if ((error = FUNC12(ds, "nbmand", &nbmand) != 0)) {
		FUNC11(FUNC8(os), FTAG);
		return (error);
	}

	/*
	 * Register property callbacks.
	 *
	 * It would probably be fine to just check for i/o error from
	 * the first prop_register(), but I guess I like to go
	 * overboard...
	 */
	error = FUNC13(ds,
	    FUNC24(ZFS_PROP_ATIME), atime_changed_cb, zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_XATTR), xattr_changed_cb, zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_RECORDSIZE), blksz_changed_cb, zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_READONLY), readonly_changed_cb, zfsvfs);
#ifdef illumos
	error = error ? error : dsl_prop_register(ds,
	    zfs_prop_to_name(ZFS_PROP_DEVICES), devices_changed_cb, zfsvfs);
#endif
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_SETUID), setuid_changed_cb, zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_EXEC), exec_changed_cb, zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_SNAPDIR), snapdir_changed_cb, zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_ACLMODE), acl_mode_changed_cb, zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_ACLINHERIT), acl_inherit_changed_cb,
	    zfsvfs);
	error = error ? error : FUNC13(ds,
	    FUNC24(ZFS_PROP_VSCAN), vscan_changed_cb, zfsvfs);
	FUNC11(FUNC8(os), FTAG);
	if (error)
		goto unregister;

	/*
	 * Invoke our callbacks to restore temporary mount options.
	 */
	if (do_readonly)
		FUNC17(zfsvfs, readonly);
	if (do_setuid)
		FUNC18(zfsvfs, setuid);
	if (do_exec)
		FUNC15(zfsvfs, exec);
	if (do_xattr)
		FUNC23(zfsvfs, xattr);
	if (do_atime)
		FUNC3(zfsvfs, atime);

	FUNC16(zfsvfs, nbmand);

	return (0);

unregister:
	FUNC14(ds, zfsvfs);
	return (error);
}