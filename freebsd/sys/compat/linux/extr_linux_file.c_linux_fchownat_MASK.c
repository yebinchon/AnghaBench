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
struct linux_fchownat_args {int flag; int dfd; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int LINUX_AT_FDCWD ; 
 int LINUX_AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC2 (struct thread*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct thread *td, struct linux_fchownat_args *args)
{
	char *path;
	int error, dfd, flag;

	if (args->flag & ~LINUX_AT_SYMLINK_NOFOLLOW)
		return (EINVAL);

	dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD :  args->dfd;
	FUNC0(td, args->filename, &path, dfd);

	flag = (args->flag & LINUX_AT_SYMLINK_NOFOLLOW) == 0 ? 0 :
	    AT_SYMLINK_NOFOLLOW;
	error = FUNC2(td, dfd, path, UIO_SYSSPACE, args->uid, args->gid,
	    flag);
	FUNC1(path);
	return (error);
}