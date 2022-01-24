#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct filecaps {int /*<<< orphan*/  fc_rights; } ;
struct file {int /*<<< orphan*/  f_flag; } ;
struct cloudabi_sys_fd_stat_get_args {scalar_t__ buf; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  fsb ;
struct TYPE_3__ {int /*<<< orphan*/  fs_rights_inheriting; int /*<<< orphan*/  fs_rights_base; int /*<<< orphan*/  fs_filetype; int /*<<< orphan*/  fs_flags; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ cloudabi_fdstat_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOUDABI_FDFLAG_APPEND ; 
 int /*<<< orphan*/  CLOUDABI_FDFLAG_NONBLOCK ; 
 int /*<<< orphan*/  CLOUDABI_FDFLAG_SYNC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int O_APPEND ; 
 int O_NONBLOCK ; 
 int O_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct thread*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC7 (struct filecaps*) ; 

int
FUNC8(struct thread *td,
    struct cloudabi_sys_fd_stat_get_args *uap)
{
	cloudabi_fdstat_t fsb = {0};
	struct file *fp;
	cap_rights_t rights;
	struct filecaps fcaps;
	int error, oflags;

	/* Obtain file descriptor properties. */
	error = FUNC6(td, uap->fd, FUNC1(&rights), &fp,
	    &fcaps);
	if (error != 0)
		return (error);
	oflags = FUNC0(fp->f_flag);
	fsb.fs_filetype = FUNC2(fp);
	FUNC5(fp, td);

	/* Convert file descriptor flags. */
	if (oflags & O_APPEND)
		fsb.fs_flags |= CLOUDABI_FDFLAG_APPEND;
	if (oflags & O_NONBLOCK)
		fsb.fs_flags |= CLOUDABI_FDFLAG_NONBLOCK;
	if (oflags & O_SYNC)
		fsb.fs_flags |= CLOUDABI_FDFLAG_SYNC;

	/* Convert capabilities to CloudABI rights. */
	FUNC3(&fcaps.fc_rights, fsb.fs_filetype,
	    &fsb.fs_rights_base, &fsb.fs_rights_inheriting);
	FUNC7(&fcaps);
	return (FUNC4(&fsb, (void *)uap->buf, sizeof(fsb)));
}