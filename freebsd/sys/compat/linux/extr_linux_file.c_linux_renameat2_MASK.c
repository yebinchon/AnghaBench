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
struct thread {int dummy; } ;
struct linux_renameat2_args {int flags; int olddfd; int newdfd; int /*<<< orphan*/  newname; int /*<<< orphan*/  oldname; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int LINUX_AT_FDCWD ; 
 int LINUX_RENAME_EXCHANGE ; 
 int LINUX_RENAME_NOREPLACE ; 
 int LINUX_RENAME_WHITEOUT ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC2 (struct thread*,int,char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,char*,int) ; 

int
FUNC5(struct thread *td, struct linux_renameat2_args *args)
{
	char *from, *to;
	int error, olddfd, newdfd;

	if (args->flags != 0) {
		if (args->flags & ~(LINUX_RENAME_EXCHANGE |
		    LINUX_RENAME_NOREPLACE | LINUX_RENAME_WHITEOUT))
			return (EINVAL);
		if (args->flags & LINUX_RENAME_EXCHANGE &&
		    args->flags & (LINUX_RENAME_NOREPLACE |
		    LINUX_RENAME_WHITEOUT))
			return (EINVAL);
		FUNC4(td, "renameat2 unsupported flags 0x%x",
		    args->flags);
		return (EINVAL);
	}

	olddfd = (args->olddfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->olddfd;
	newdfd = (args->newdfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->newdfd;
	FUNC0(td, args->oldname, &from, olddfd);
	/* Expand LCONVPATHCREATE so that `from' can be freed on errors */
	error = FUNC3(td, args->newname, UIO_USERSPACE, &to, 1, newdfd);
	if (to == NULL) {
		FUNC1(from);
		return (error);
	}

	error = FUNC2(td, olddfd, from, newdfd, to, UIO_SYSSPACE);
	FUNC1(from);
	FUNC1(to);
	return (error);
}