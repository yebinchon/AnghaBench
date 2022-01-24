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
struct linux_wait4_args {int options; int /*<<< orphan*/ * rusage; int /*<<< orphan*/  status; int /*<<< orphan*/  pid; } ;
struct __wrusage {int /*<<< orphan*/  wru_self; } ;

/* Variables and functions */
 int EINVAL ; 
 int LINUX_WCONTINUED ; 
 int LINUX_WNOHANG ; 
 int LINUX_WUNTRACED ; 
 int WEXITED ; 
 int __WALL ; 
 int __WCLONE ; 
 int __WNOTHREAD ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct __wrusage*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 

int
FUNC3(struct thread *td, struct linux_wait4_args *args)
{
	int error, options;
	struct __wrusage wru, *wrup;

	if (args->options & ~(LINUX_WUNTRACED | LINUX_WNOHANG |
	    LINUX_WCONTINUED | __WCLONE | __WNOTHREAD | __WALL))
		return (EINVAL);

	options = WEXITED;
	FUNC2(args->options, &options);

	if (args->rusage != NULL)
		wrup = &wru;
	else
		wrup = NULL;
	error = FUNC0(td, args->pid, args->status, options, wrup);
	if (error != 0)
		return (error);
	if (args->rusage != NULL)
		error = FUNC1(&wru.wru_self, args->rusage);
	return (error);
}