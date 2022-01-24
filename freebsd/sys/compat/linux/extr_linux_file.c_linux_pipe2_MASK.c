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
struct linux_pipe2_args {int flags; int /*<<< orphan*/  pipefds; } ;
typedef  int /*<<< orphan*/  fildes ;

/* Variables and functions */
 int EINVAL ; 
 int LINUX_O_CLOEXEC ; 
 int LINUX_O_NONBLOCK ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int) ; 
 int FUNC2 (struct thread*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct linux_pipe2_args *args)
{
	int fildes[2];
	int error, flags;

	if ((args->flags & ~(LINUX_O_NONBLOCK | LINUX_O_CLOEXEC)) != 0)
		return (EINVAL);

	flags = 0;
	if ((args->flags & LINUX_O_NONBLOCK) != 0)
		flags |= O_NONBLOCK;
	if ((args->flags & LINUX_O_CLOEXEC) != 0)
		flags |= O_CLOEXEC;
	error = FUNC2(td, fildes, flags, NULL, NULL);
	if (error != 0)
		return (error);

	error = FUNC0(fildes, args->pipefds, sizeof(fildes));
	if (error != 0) {
		(void)FUNC1(td, fildes[0]);
		(void)FUNC1(td, fildes[1]);
	}

	return (error);
}