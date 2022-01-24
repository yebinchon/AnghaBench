#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ v_type; int v_iflag; struct mount* v_mountedhere; TYPE_1__* v_mount; } ;
typedef  TYPE_2__ vnode_t ;
struct vfsconf {int dummy; } ;
struct ucred {int dummy; } ;
struct mount {int mnt_flag; int /*<<< orphan*/ * mnt_optnew; int /*<<< orphan*/  mnt_stat; int /*<<< orphan*/ * mnt_opt; int /*<<< orphan*/ * mnt_vnodecovered; } ;
struct TYPE_18__ {struct ucred* td_ucred; } ;
typedef  TYPE_3__ kthread_t ;
struct TYPE_16__ {int /*<<< orphan*/  mnt_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int EBUSY ; 
 int ENAMETOOLONG ; 
 int ENODEV ; 
 int ENOTDIR ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 scalar_t__ MFSNAMELEN ; 
 scalar_t__ MNAMELEN ; 
 int MNT_IGNORE ; 
 int MNT_NOSUID ; 
 int MNT_RDONLY ; 
 int MNT_UPDATEMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 int FUNC2 (struct mount*) ; 
 scalar_t__ FUNC3 (struct mount*,int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int VI_MOUNT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VQ_MOUNT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 struct ucred* kcred ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char const*) ; 
 struct vfsconf* FUNC13 (char const*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC16 (TYPE_2__*,struct vfsconf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mount*) ; 
 int /*<<< orphan*/  FUNC18 (struct mount*) ; 
 int /*<<< orphan*/  FUNC19 (struct mount*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mount*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 

int
FUNC23(kthread_t *td, vnode_t **vpp, const char *fstype, char *fspath,
    char *fspec, int fsflags)
{
	struct vfsconf *vfsp;
	struct mount *mp;
	vnode_t *vp, *mvp;
	struct ucred *cr;
	int error;

	FUNC0(*vpp, "mount_snapshot");

	vp = *vpp;
	*vpp = NULL;
	error = 0;

	/*
	 * Be ultra-paranoid about making sure the type and fspath
	 * variables will fit in our mp buffers, including the
	 * terminating NUL.
	 */
	if (FUNC12(fstype) >= MFSNAMELEN || FUNC12(fspath) >= MNAMELEN)
		error = ENAMETOOLONG;
	if (error == 0 && (vfsp = FUNC13(fstype, td, &error)) == NULL)
		error = ENODEV;
	if (error == 0 && vp->v_type != VDIR)
		error = ENOTDIR;
	/*
	 * We need vnode lock to protect v_mountedhere and vnode interlock
	 * to protect v_iflag.
	 */
	if (error == 0) {
		FUNC5(vp);
		if ((vp->v_iflag & VI_MOUNT) == 0 && vp->v_mountedhere == NULL)
			vp->v_iflag |= VI_MOUNT;
		else
			error = EBUSY;
		FUNC6(vp);
	}
	if (error != 0) {
		FUNC22(vp);
		return (error);
	}
	FUNC7(vp, 0);

	/*
	 * Allocate and initialize the filesystem.
	 * We don't want regular user that triggered snapshot mount to be able
	 * to unmount it, so pass credentials of the parent mount.
	 */
	mp = FUNC16(vp, vfsp, fspath, vp->v_mount->mnt_cred);

	mp->mnt_optnew = NULL;
	FUNC19(mp, "from", fspec, 0);
	mp->mnt_optnew = mp->mnt_opt;
	mp->mnt_opt = NULL;

	/*
	 * Set the mount level flags.
	 */
	mp->mnt_flag = fsflags & MNT_UPDATEMASK;
	/*
	 * Snapshots are always read-only.
	 */
	mp->mnt_flag |= MNT_RDONLY;
	/*
	 * We don't want snapshots to allow access to vulnerable setuid
	 * programs, so we turn off setuid when mounting snapshots.
	 */
	mp->mnt_flag |= MNT_NOSUID;
	/*
	 * We don't want snapshots to be visible in regular
	 * mount(8) and df(1) output.
	 */
	mp->mnt_flag |= MNT_IGNORE;
	/*
	 * XXX: This is evil, but we can't mount a snapshot as a regular user.
	 * XXX: Is is safe when snapshot is mounted from within a jail?
	 */
	cr = td->td_ucred;
	td->td_ucred = kcred;
	error = FUNC2(mp);
	td->td_ucred = cr;

	if (error != 0) {
		/*
		 * Clear VI_MOUNT and decrement the use count "atomically",
		 * under the vnode lock.  This is not strictly required,
		 * but makes it easier to reason about the life-cycle and
		 * ownership of the covered vnode.
		 */
		FUNC21(vp, LK_EXCLUSIVE | LK_RETRY);
		FUNC5(vp);
		vp->v_iflag &= ~VI_MOUNT;
		FUNC6(vp);
		FUNC22(vp);
		FUNC20(mp);
		FUNC15(mp->mnt_optnew);
		mp->mnt_vnodecovered = NULL;
		FUNC17(mp);
		return (error);
	}

	if (mp->mnt_opt != NULL)
		FUNC15(mp->mnt_opt);
	mp->mnt_opt = mp->mnt_optnew;
	(void)FUNC4(mp, &mp->mnt_stat);

	/*
	 * Prevent external consumers of mount options from reading
	 * mnt_optnew.
	*/
	mp->mnt_optnew = NULL;

	FUNC21(vp, LK_EXCLUSIVE | LK_RETRY);
#ifdef FREEBSD_NAMECACHE
	cache_purge(vp);
#endif
	FUNC5(vp);
	vp->v_iflag &= ~VI_MOUNT;
	FUNC6(vp);

	vp->v_mountedhere = mp;
	/* Put the new filesystem on the mount list. */
	FUNC9(&mountlist_mtx);
	FUNC1(&mountlist, mp, mnt_list);
	FUNC10(&mountlist_mtx);
	FUNC14(NULL, VQ_MOUNT, 0);
	if (FUNC3(mp, LK_EXCLUSIVE, &mvp))
		FUNC11("mount: lost mount");
	FUNC7(vp, 0);
	FUNC18(mp);
	FUNC20(mp);
	*vpp = mvp;
	return (0);
}