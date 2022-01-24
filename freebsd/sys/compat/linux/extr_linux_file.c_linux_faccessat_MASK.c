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
struct linux_faccessat_args {int amode; int dfd; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int EINVAL ; 
 int F_OK ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int LINUX_AT_FDCWD ; 
 int R_OK ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int W_OK ; 
 int X_OK ; 
 int FUNC2 (struct thread*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct thread *td, struct linux_faccessat_args *args)
{
	char *path;
	int error, dfd;

	/* Linux convention. */
	if (args->amode & ~(F_OK | X_OK | W_OK | R_OK))
		return (EINVAL);

	dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
	FUNC0(td, args->filename, &path, dfd);

	error = FUNC2(td, dfd, path, UIO_SYSSPACE, 0, args->amode);
	FUNC1(path);

	return (error);
}