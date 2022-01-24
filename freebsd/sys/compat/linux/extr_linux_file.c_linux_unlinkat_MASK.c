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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct linux_unlinkat_args {int flag; int dfd; int /*<<< orphan*/  pathname; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int EINVAL ; 
 int EISDIR ; 
 int EPERM ; 
 int /*<<< orphan*/  FD_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int LINUX_AT_FDCWD ; 
 int LINUX_AT_REMOVEDIR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC3 (struct thread*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thread*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct thread*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct thread *td, struct linux_unlinkat_args *args)
{
	char *path;
	int error, dfd;
	struct stat st;

	if (args->flag & ~LINUX_AT_REMOVEDIR)
		return (EINVAL);

	dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
	FUNC0(td, args->pathname, &path, dfd);

	if (args->flag & LINUX_AT_REMOVEDIR)
		error = FUNC3(td, dfd, path, FD_NONE, UIO_SYSSPACE, 0);
	else
		error = FUNC4(td, dfd, path, FD_NONE, UIO_SYSSPACE, 0,
		    0);
	if (error == EPERM && !(args->flag & LINUX_AT_REMOVEDIR)) {
		/* Introduce POSIX noncompliant behaviour of Linux */
		if (FUNC5(td, AT_SYMLINK_NOFOLLOW, dfd, path,
		    UIO_SYSSPACE, &st, NULL) == 0 && FUNC2(st.st_mode))
			error = EISDIR;
	}
	FUNC1(path);
	return (error);
}