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
struct cloudabi_sys_file_unlink_args {int flags; int /*<<< orphan*/  fd; int /*<<< orphan*/  path_len; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int CLOUDABI_UNLINK_REMOVEDIR ; 
 int /*<<< orphan*/  FD_NONE ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td,
    struct cloudabi_sys_file_unlink_args *uap)
{
	char *path;
	int error;

	error = FUNC1(uap->path, uap->path_len, &path);
	if (error != 0)
		return (error);

	if (uap->flags & CLOUDABI_UNLINK_REMOVEDIR)
		error = FUNC2(td, uap->fd, path, FD_NONE,
		    UIO_SYSSPACE, 0);
	else
		error = FUNC3(td, uap->fd, path, FD_NONE,
		    UIO_SYSSPACE, 0, 0);
	FUNC0(path);
	return (error);
}