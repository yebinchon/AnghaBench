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
struct cloudabi_sys_file_rename_args {int /*<<< orphan*/  fd2; int /*<<< orphan*/  fd1; int /*<<< orphan*/  path2_len; int /*<<< orphan*/  path2; int /*<<< orphan*/  path1_len; int /*<<< orphan*/  path1; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td,
    struct cloudabi_sys_file_rename_args *uap)
{
	char *old, *new;
	int error;

	error = FUNC1(uap->path1, uap->path1_len, &old);
	if (error != 0)
		return (error);
	error = FUNC1(uap->path2, uap->path2_len, &new);
	if (error != 0) {
		FUNC0(old);
		return (error);
	}

	error = FUNC2(td, uap->fd1, old, uap->fd2, new,
	    UIO_SYSSPACE);
	FUNC0(old);
	FUNC0(new);
	return (error);
}