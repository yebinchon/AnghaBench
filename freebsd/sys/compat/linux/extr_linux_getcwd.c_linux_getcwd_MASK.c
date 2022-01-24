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
struct thread {int* td_retval; } ;
struct linux_getcwd_args {int bufsize; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  LINUX_PATH_MAX ; 
 int /*<<< orphan*/  M_LINUX ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

int
FUNC5(struct thread *td, struct linux_getcwd_args *args)
{
	char *path;
	int error, lenused;

	/*
	 * Linux returns ERANGE instead of EINVAL.
	 */
	if (args->bufsize < 2)
		return (ERANGE);

	path = FUNC3(LINUX_PATH_MAX, M_LINUX, M_WAITOK);

	error = FUNC2(td, path, UIO_SYSSPACE, args->bufsize,
	    LINUX_PATH_MAX);
	if (error == 0) {
		lenused = FUNC4(path) + 1;
		error = FUNC0(path, args->buf, lenused);
		if (error == 0)
			td->td_retval[0] = lenused;
	}

	FUNC1(path, M_LINUX);
	return (error);
}