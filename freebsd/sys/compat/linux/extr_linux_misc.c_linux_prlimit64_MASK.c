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
typedef  int u_int ;
struct thread {struct proc* td_proc; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct proc {int dummy; } ;
struct linux_rlimit64 {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct linux_prlimit64_args {size_t resource; scalar_t__ pid; int /*<<< orphan*/ * new; int /*<<< orphan*/ * old; } ;
typedef  int /*<<< orphan*/  nrlim ;
typedef  int /*<<< orphan*/  lrlim ;

/* Variables and functions */
 int EINVAL ; 
 void* LINUX_RLIM_INFINITY ; 
 size_t LINUX_RLIM_NLIMITS ; 
 int PGET_CANDEBUG ; 
 int PGET_CANSEE ; 
 int PGET_HOLD ; 
 int PGET_NOTWEXIT ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 scalar_t__ RLIM_INFINITY ; 
 int FUNC4 (int /*<<< orphan*/ *,struct rlimit*,int) ; 
 int FUNC5 (struct linux_rlimit64*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct thread*,struct proc*,int,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int,struct rlimit*) ; 
 int* linux_to_bsd_resource ; 
 int FUNC8 (scalar_t__,int,struct proc**) ; 

int
FUNC9(struct thread *td, struct linux_prlimit64_args *args)
{
	struct rlimit rlim, nrlim;
	struct linux_rlimit64 lrlim;
	struct proc *p;
	u_int which;
	int flags;
	int error;

	if (args->resource >= LINUX_RLIM_NLIMITS)
		return (EINVAL);

	which = linux_to_bsd_resource[args->resource];
	if (which == -1)
		return (EINVAL);

	if (args->new != NULL) {
		/*
		 * Note. Unlike FreeBSD where rlim is signed 64-bit Linux
		 * rlim is unsigned 64-bit. FreeBSD treats negative limits
		 * as INFINITY so we do not need a conversion even.
		 */
		error = FUNC4(args->new, &nrlim, sizeof(nrlim));
		if (error != 0)
			return (error);
	}

	flags = PGET_HOLD | PGET_NOTWEXIT;
	if (args->new != NULL)
		flags |= PGET_CANDEBUG;
	else
		flags |= PGET_CANSEE;
	if (args->pid == 0) {
		p = td->td_proc;
		FUNC0(p);
	} else {
		error = FUNC8(args->pid, flags, &p);
		if (error != 0)
			return (error);
	}
	if (args->old != NULL) {
		FUNC2(p);
		FUNC7(p, which, &rlim);
		FUNC3(p);
		if (rlim.rlim_cur == RLIM_INFINITY)
			lrlim.rlim_cur = LINUX_RLIM_INFINITY;
		else
			lrlim.rlim_cur = rlim.rlim_cur;
		if (rlim.rlim_max == RLIM_INFINITY)
			lrlim.rlim_max = LINUX_RLIM_INFINITY;
		else
			lrlim.rlim_max = rlim.rlim_max;
		error = FUNC5(&lrlim, args->old, sizeof(lrlim));
		if (error != 0)
			goto out;
	}

	if (args->new != NULL)
		error = FUNC6(td, p, which, &nrlim);

 out:
	FUNC1(p);
	return (error);
}