#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  fd; } ;
struct cloudabi_sys_file_link_args {TYPE_1__ fd1; int /*<<< orphan*/  fd2; int /*<<< orphan*/  path2_len; int /*<<< orphan*/  path2; int /*<<< orphan*/  path1_len; int /*<<< orphan*/  path1; } ;

/* Variables and functions */
 int CLOUDABI_LOOKUP_SYMLINK_FOLLOW ; 
 int /*<<< orphan*/  FOLLOW ; 
 int /*<<< orphan*/  NOFOLLOW ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td,
    struct cloudabi_sys_file_link_args *uap)
{
	char *path1, *path2;
	int error;

	error = FUNC1(uap->path1, uap->path1_len, &path1);
	if (error != 0)
		return (error);
	error = FUNC1(uap->path2, uap->path2_len, &path2);
	if (error != 0) {
		FUNC0(path1);
		return (error);
	}

	error = FUNC2(td, uap->fd1.fd, uap->fd2, path1, path2,
	    UIO_SYSSPACE, (uap->fd1.flags & CLOUDABI_LOOKUP_SYMLINK_FOLLOW) ?
	    FOLLOW : NOFOLLOW);
	FUNC0(path1);
	FUNC0(path2);
	return (error);
}