#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vnode {struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct mount {int mnt_flag; } ;
struct linux_syncfs_args {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBF_MNTLSTLOCK ; 
 int /*<<< orphan*/  MNT_NOWAIT ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  TDP_SYNCIO ; 
 int /*<<< orphan*/  FUNC0 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_NOWAIT ; 
 int /*<<< orphan*/  cap_fsync_rights ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vnode**) ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

int
FUNC12(struct thread *td, struct linux_syncfs_args *args)
{
	struct mount *mp;
	struct vnode *vp;
	int error, save;

	error = FUNC3(td, args->fd, &cap_fsync_rights, &vp);
	if (error != 0)
		/*
		 * Linux syncfs() returns only EBADF, however fgetvp()
		 * can return EINVAL in case of file descriptor does
		 * not represent a vnode. XXX.
		 */
		return (error);

	mp = vp->v_mount;
	FUNC4(&mountlist_mtx);
	error = FUNC6(mp, MBF_MNTLSTLOCK);
	if (error != 0) {
		/* See comment above. */
		FUNC5(&mountlist_mtx);
		goto out;
	}
	if ((mp->mnt_flag & MNT_RDONLY) == 0 &&
	    FUNC10(NULL, &mp, V_NOWAIT) == 0) {
		save = FUNC2(TDP_SYNCIO);
		FUNC7(mp, MNT_NOWAIT);
		FUNC0(mp, MNT_NOWAIT);
		FUNC1(save);
		FUNC9(mp);
	}
	FUNC8(mp);

 out:
	FUNC11(vp);
	return (error);
}