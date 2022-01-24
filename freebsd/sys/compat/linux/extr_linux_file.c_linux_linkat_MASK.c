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
struct linux_linkat_args {int flag; int olddfd; int newdfd; int /*<<< orphan*/  newname; int /*<<< orphan*/  oldname; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int EINVAL ; 
 int FOLLOW ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int LINUX_AT_FDCWD ; 
 int LINUX_AT_SYMLINK_FOLLOW ; 
 int NOFOLLOW ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC2 (struct thread*,int,int,char*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int,int) ; 

int
FUNC4(struct thread *td, struct linux_linkat_args *args)
{
	char *path, *to;
	int error, olddfd, newdfd, follow;

	if (args->flag & ~LINUX_AT_SYMLINK_FOLLOW)
		return (EINVAL);

	olddfd = (args->olddfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->olddfd;
	newdfd = (args->newdfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->newdfd;
	FUNC0(td, args->oldname, &path, olddfd);
	/* Expand LCONVPATHCREATE so that `path' can be freed on errors */
	error = FUNC3(td, args->newname, UIO_USERSPACE, &to, 1, newdfd);
	if (to == NULL) {
		FUNC1(path);
		return (error);
	}

	follow = (args->flag & LINUX_AT_SYMLINK_FOLLOW) == 0 ? NOFOLLOW :
	    FOLLOW;
	error = FUNC2(td, olddfd, newdfd, path, to, UIO_SYSSPACE, follow);
	FUNC1(path);
	FUNC1(to);
	return (error);
}