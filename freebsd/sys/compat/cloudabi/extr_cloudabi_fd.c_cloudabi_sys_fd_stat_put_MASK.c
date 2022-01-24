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
struct cloudabi_sys_fd_stat_put_args {scalar_t__ flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  fsb ;
struct TYPE_3__ {int fs_flags; int fs_rights_base; int fs_rights_inheriting; } ;
typedef  TYPE_1__ cloudabi_fdstat_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int CLOUDABI_FDFLAG_APPEND ; 
 int CLOUDABI_FDFLAG_DSYNC ; 
 int CLOUDABI_FDFLAG_NONBLOCK ; 
 int CLOUDABI_FDFLAG_RSYNC ; 
 int CLOUDABI_FDFLAG_SYNC ; 
 scalar_t__ CLOUDABI_FDSTAT_FLAGS ; 
 scalar_t__ CLOUDABI_FDSTAT_RIGHTS ; 
 int EINVAL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_APPEND ; 
 int O_NONBLOCK ; 
 int O_SYNC ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct thread *td,
    struct cloudabi_sys_fd_stat_put_args *uap)
{
	cloudabi_fdstat_t fsb;
	cap_rights_t rights;
	int error, oflags;

	error = FUNC1(uap->buf, &fsb, sizeof(fsb));
	if (error != 0)
		return (error);

	if (uap->flags == CLOUDABI_FDSTAT_FLAGS) {
		/* Convert flags. */
		oflags = 0;
		if (fsb.fs_flags & CLOUDABI_FDFLAG_APPEND)
			oflags |= O_APPEND;
		if (fsb.fs_flags & CLOUDABI_FDFLAG_NONBLOCK)
			oflags |= O_NONBLOCK;
		if (fsb.fs_flags & (CLOUDABI_FDFLAG_SYNC |
		    CLOUDABI_FDFLAG_DSYNC | CLOUDABI_FDFLAG_RSYNC))
			oflags |= O_SYNC;
		return (FUNC3(td, uap->fd, F_SETFL, oflags));
	} else if (uap->flags == CLOUDABI_FDSTAT_RIGHTS) {
		/* Convert rights. */
		error = FUNC0(
		    fsb.fs_rights_base | fsb.fs_rights_inheriting, &rights);
		if (error != 0)
			return (error);
		return (FUNC2(td, uap->fd, &rights));
	}
	return (EINVAL);
}