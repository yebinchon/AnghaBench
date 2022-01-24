#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_13__ ;
typedef  struct TYPE_26__   TYPE_12__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ z_issnap; int /*<<< orphan*/  z_teardown_lock; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct TYPE_29__ {scalar_t__ v_type; int v_count; int v_flag; int /*<<< orphan*/  v_vfsp; int /*<<< orphan*/  v_lock; } ;
typedef  TYPE_2__ vnode_t ;
struct TYPE_30__ {int vfs_flag; TYPE_1__* vfs_data; int /*<<< orphan*/  mnt_optnew; TYPE_2__* mnt_vnodecovered; } ;
typedef  TYPE_3__ vfs_t ;
struct TYPE_31__ {int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_mask; } ;
typedef  TYPE_4__ vattr_t ;
struct TYPE_32__ {int /*<<< orphan*/ * td_ucred; } ;
typedef  TYPE_5__ kthread_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_27__ {char* pn_path; } ;
struct TYPE_26__ {int flags; scalar_t__ datalen; int /*<<< orphan*/  spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_UID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EBUSY ; 
 scalar_t__ ECANCELED ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int MAXNAMELEN ; 
 int MNT_NFS4ACLS ; 
 int MNT_ROOTFS ; 
 int MNT_UPDATE ; 
 int MS_DATA ; 
 int MS_OVERLAY ; 
 int MS_REMOUNT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int VROOT ; 
 int /*<<< orphan*/  VWRITE ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_MOUNT ; 
 TYPE_5__* curthread ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fromspace ; 
 int FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (char*) ; 
 TYPE_13__ spn ; 
 TYPE_12__* uap ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int) ; 
 int FUNC21 (TYPE_3__*,char*) ; 
 int FUNC22 (TYPE_3__*,char*) ; 
 int FUNC23 (TYPE_3__*) ; 
 scalar_t__ zfs_super_owner ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int*) ; 

__attribute__((used)) static int
FUNC26(vfs_t *vfsp)
{
	kthread_t	*td = curthread;
	vnode_t		*mvp = vfsp->mnt_vnodecovered;
	cred_t		*cr = td->td_ucred;
	char		*osname;
	int		error = 0;
	int		canwrite;

#ifdef illumos
	if (mvp->v_type != VDIR)
		return (SET_ERROR(ENOTDIR));

	mutex_enter(&mvp->v_lock);
	if ((uap->flags & MS_REMOUNT) == 0 &&
	    (uap->flags & MS_OVERLAY) == 0 &&
	    (mvp->v_count != 1 || (mvp->v_flag & VROOT))) {
		mutex_exit(&mvp->v_lock);
		return (SET_ERROR(EBUSY));
	}
	mutex_exit(&mvp->v_lock);

	/*
	 * ZFS does not support passing unparsed data in via MS_DATA.
	 * Users should use the MS_OPTIONSTR interface; this means
	 * that all option parsing is already done and the options struct
	 * can be interrogated.
	 */
	if ((uap->flags & MS_DATA) && uap->datalen > 0)
		return (SET_ERROR(EINVAL));

	/*
	 * Get the objset name (the "special" mount argument).
	 */
	if (error = pn_get(uap->spec, fromspace, &spn))
		return (error);

	osname = spn.pn_path;
#else	/* !illumos */
	if (FUNC19(vfsp->mnt_optnew, "from", (void **)&osname, NULL))
		return (FUNC3(EINVAL));

	/*
	 * If full-owner-access is enabled and delegated administration is
	 * turned on, we must set nosuid.
	 */
	if (zfs_super_owner &&
	    FUNC8(osname, ZFS_DELEG_PERM_MOUNT, cr) != ECANCELED) {
		FUNC16(cr, vfsp);
	}
#endif	/* illumos */

	/*
	 * Check for mount privilege?
	 *
	 * If we don't have privilege then see if
	 * we have local permission to allow it
	 */
	error = FUNC15(cr, mvp, vfsp);
	if (error) {
		if (FUNC8(osname, ZFS_DELEG_PERM_MOUNT, cr) != 0)
			goto out;

		if (!(vfsp->vfs_flag & MS_REMOUNT)) {
			vattr_t		vattr;

			/*
			 * Make sure user is the owner of the mount point
			 * or has sufficient privileges.
			 */

			vattr.va_mask = AT_UID;

			FUNC20(mvp, LK_SHARED | LK_RETRY);
			if (FUNC6(mvp, &vattr, cr)) {
				FUNC7(mvp, 0);
				goto out;
			}

			if (FUNC17(mvp, cr, vattr.va_uid) != 0 &&
			    FUNC5(mvp, VWRITE, cr, td) != 0) {
				FUNC7(mvp, 0);
				goto out;
			}
			FUNC7(mvp, 0);
		}

		FUNC16(cr, vfsp);
	}

	/*
	 * Refuse to mount a filesystem if we are in a local zone and the
	 * dataset is not visible.
	 */
	if (!FUNC1(curthread) &&
	    (!FUNC25(osname, &canwrite) || !canwrite)) {
		error = FUNC3(EPERM);
		goto out;
	}

#ifdef SECLABEL
	error = zfs_mount_label_policy(vfsp, osname);
	if (error)
		goto out;
#endif

	vfsp->vfs_flag |= MNT_NFS4ACLS;

	/*
	 * When doing a remount, we simply refresh our temporary properties
	 * according to those options set in the current VFS options.
	 */
	if (vfsp->vfs_flag & MS_REMOUNT) {
		zfsvfs_t *zfsvfs = vfsp->vfs_data;

		/*
		 * Refresh mount options with z_teardown_lock blocking I/O while
		 * the filesystem is in an inconsistent state.
		 * The lock also serializes this code with filesystem
		 * manipulations between entry to zfs_suspend_fs() and return
		 * from zfs_resume_fs().
		 */
		FUNC13(&zfsvfs->z_teardown_lock, RW_WRITER, FTAG);
		FUNC24(zfsvfs);
		error = FUNC23(vfsp);
		FUNC14(&zfsvfs->z_teardown_lock, FTAG);
		goto out;
	}

	/* Initial root mount: try hard to import the requested root pool. */
	if ((vfsp->vfs_flag & MNT_ROOTFS) != 0 &&
	    (vfsp->vfs_flag & MNT_UPDATE) == 0) {
		char pname[MAXNAMELEN];

		error = FUNC9(osname, pname);
		if (error == 0)
			error = FUNC18(pname);
		if (error)
			goto out;
	}
	FUNC0();
	error = FUNC21(vfsp, osname);
	FUNC2();

#ifdef illumos
	/*
	 * Add an extra VFS_HOLD on our parent vfs so that it can't
	 * disappear due to a forced unmount.
	 */
	if (error == 0 && ((zfsvfs_t *)vfsp->vfs_data)->z_issnap)
		VFS_HOLD(mvp->v_vfsp);
#endif

out:
	return (error);
}