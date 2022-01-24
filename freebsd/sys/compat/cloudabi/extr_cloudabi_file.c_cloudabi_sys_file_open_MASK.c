#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct thread {int* td_retval; int /*<<< orphan*/  td_ucred; TYPE_3__* td_proc; } ;
struct nameidata {struct vnode* ni_vp; int /*<<< orphan*/  ni_filecaps; } ;
struct filecaps {int /*<<< orphan*/  fc_fcntls; int /*<<< orphan*/  fc_rights; } ;
struct file {int f_flag; int f_seqcount; int /*<<< orphan*/ * f_ops; struct vnode* f_vnode; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  fd; } ;
struct cloudabi_sys_file_open_args {int oflags; TYPE_1__ dirfd; int /*<<< orphan*/  path_len; int /*<<< orphan*/  path; int /*<<< orphan*/  fds; } ;
typedef  int /*<<< orphan*/  fds ;
struct TYPE_9__ {int fs_rights_base; int fs_rights_inheriting; int fs_flags; } ;
typedef  TYPE_4__ cloudabi_fdstat_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_8__ {TYPE_2__* p_fd; } ;
struct TYPE_7__ {int fd_cmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CREATE ; 
 int /*<<< orphan*/  CAP_FCNTL_SETFL ; 
 int /*<<< orphan*/  CAP_FSYNC ; 
 int /*<<< orphan*/  CAP_FTRUNCATE ; 
 int /*<<< orphan*/  CAP_LOOKUP ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int CLOUDABI_FDFLAG_APPEND ; 
 int CLOUDABI_FDFLAG_DSYNC ; 
 int CLOUDABI_FDFLAG_NONBLOCK ; 
 int CLOUDABI_FDFLAG_RSYNC ; 
 int CLOUDABI_FDFLAG_SYNC ; 
 int CLOUDABI_LOOKUP_SYMLINK_FOLLOW ; 
 int CLOUDABI_O_CREAT ; 
 int CLOUDABI_O_DIRECTORY ; 
 int CLOUDABI_O_EXCL ; 
 int CLOUDABI_O_TRUNC ; 
 int CLOUDABI_RIGHT_FD_DATASYNC ; 
 int CLOUDABI_RIGHT_FD_READ ; 
 int CLOUDABI_RIGHT_FD_WRITE ; 
 int CLOUDABI_RIGHT_FILE_ALLOCATE ; 
 int CLOUDABI_RIGHT_FILE_READDIR ; 
 int CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE ; 
 int CLOUDABI_RIGHT_MEM_MAP_EXEC ; 
 int /*<<< orphan*/  DTYPE_VNODE ; 
 int ELOOP ; 
 int EMLINK ; 
 int ENXIO ; 
 int FHASLOCK ; 
 int FMASK ; 
 int /*<<< orphan*/  FOLLOW ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct thread*) ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_DIRECTORY ; 
 int O_EXCL ; 
 int O_NOFOLLOW ; 
 int O_NONBLOCK ; 
 int O_SYNC ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  badfileops ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC11 (struct thread*,struct file**) ; 
 int /*<<< orphan*/  FUNC12 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct file*,int,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct thread*,struct file*,int*,int,struct filecaps*) ; 
 int FUNC16 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC17 (struct nameidata*,int*,int,struct file*) ; 
 int /*<<< orphan*/  vnops ; 

int
FUNC18(struct thread *td,
    struct cloudabi_sys_file_open_args *uap)
{
	cloudabi_fdstat_t fds;
	cap_rights_t rights;
	struct filecaps fcaps = {};
	struct nameidata nd;
	struct file *fp;
	struct vnode *vp;
	char *path;
	int error, fd, fflags;
	bool read, write;

	error = FUNC9(uap->fds, &fds, sizeof(fds));
	if (error != 0)
		return (error);

	/* All the requested rights should be set on the descriptor. */
	error = FUNC6(
	    fds.fs_rights_base | fds.fs_rights_inheriting, &rights);
	if (error != 0)
		return (error);
	FUNC4(&rights, CAP_LOOKUP);

	/* Convert rights to corresponding access mode. */
	read = (fds.fs_rights_base & (CLOUDABI_RIGHT_FD_READ |
	    CLOUDABI_RIGHT_FILE_READDIR | CLOUDABI_RIGHT_MEM_MAP_EXEC)) != 0;
	write = (fds.fs_rights_base & (CLOUDABI_RIGHT_FD_DATASYNC |
	    CLOUDABI_RIGHT_FD_WRITE | CLOUDABI_RIGHT_FILE_ALLOCATE |
	    CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE)) != 0;
	fflags = write ? read ? FREAD | FWRITE : FWRITE : FREAD;

	/* Convert open flags. */
	if ((uap->oflags & CLOUDABI_O_CREAT) != 0) {
		fflags |= O_CREAT;
		FUNC4(&rights, CAP_CREATE);
	}
	if ((uap->oflags & CLOUDABI_O_DIRECTORY) != 0)
		fflags |= O_DIRECTORY;
	if ((uap->oflags & CLOUDABI_O_EXCL) != 0)
		fflags |= O_EXCL;
	if ((uap->oflags & CLOUDABI_O_TRUNC) != 0) {
		fflags |= O_TRUNC;
		FUNC4(&rights, CAP_FTRUNCATE);
	}
	if ((fds.fs_flags & CLOUDABI_FDFLAG_APPEND) != 0)
		fflags |= O_APPEND;
	if ((fds.fs_flags & CLOUDABI_FDFLAG_NONBLOCK) != 0)
		fflags |= O_NONBLOCK;
	if ((fds.fs_flags & (CLOUDABI_FDFLAG_SYNC | CLOUDABI_FDFLAG_DSYNC |
	    CLOUDABI_FDFLAG_RSYNC)) != 0) {
		fflags |= O_SYNC;
		FUNC4(&rights, CAP_FSYNC);
	}
	if ((uap->dirfd.flags & CLOUDABI_LOOKUP_SYMLINK_FOLLOW) == 0)
		fflags |= O_NOFOLLOW;
	if (write && (fflags & (O_APPEND | O_TRUNC)) == 0)
		FUNC4(&rights, CAP_SEEK);

	/* Allocate new file descriptor. */
	error = FUNC11(td, &fp);
	if (error != 0)
		return (error);
	fp->f_flag = fflags & FMASK;

	/* Open path. */
	error = FUNC10(uap->path, uap->path_len, &path);
	if (error != 0) {
		FUNC12(fp, td);
		return (error);
	}
	FUNC1(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, path, uap->dirfd.fd,
	    &rights, td);
	error = FUNC17(&nd, &fflags, 0777 & ~td->td_proc->p_fd->fd_cmask, fp);
	FUNC7(path);
	if (error != 0) {
		/* Custom operations provided. */
		if (error == ENXIO && fp->f_ops != &badfileops)
			goto success;

		/*
		 * POSIX compliance: return ELOOP in case openat() is
		 * called on a symbolic link and O_NOFOLLOW is set.
		 */
		if (error == EMLINK)
			error = ELOOP;
		FUNC12(fp, td);
		return (error);
	}
	FUNC0(&nd, NDF_ONLY_PNBUF);
	FUNC13(&nd.ni_filecaps);
	fp->f_vnode = vp = nd.ni_vp;

	/* Install vnode operations if no custom operations are provided. */
	if (fp->f_ops == &badfileops) {
		fp->f_seqcount = 1;
		FUNC14(fp, (fflags & FMASK) | (fp->f_flag & FHASLOCK),
		    DTYPE_VNODE, vp, &vnops);
	}
	FUNC2(vp, 0);

	/* Truncate file. */
	if (fflags & O_TRUNC) {
		error = FUNC16(fp, 0, td->td_ucred, td);
		if (error != 0) {
			FUNC12(fp, td);
			return (error);
		}
	}

success:
	/* Determine which Capsicum rights to set on the file descriptor. */
	FUNC8(FUNC5(fp),
	    &fds.fs_rights_base, &fds.fs_rights_inheriting);
	FUNC6(fds.fs_rights_base | fds.fs_rights_inheriting,
	    &fcaps.fc_rights);
	if (FUNC3(&fcaps.fc_rights))
		fcaps.fc_fcntls = CAP_FCNTL_SETFL;

	error = FUNC15(td, fp, &fd, fflags, &fcaps);
	FUNC12(fp, td);
	if (error != 0)
		return (error);
	td->td_retval[0] = fd;
	return (0);
}