#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct linux_rt_sigqueueinfo_args {int /*<<< orphan*/  pid; int /*<<< orphan*/  sig; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  linfo ;
struct TYPE_4__ {scalar_t__ lsi_code; } ;
typedef  TYPE_1__ l_siginfo_t ;
typedef  int /*<<< orphan*/  ksiginfo_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct thread*,struct proc*,int) ; 
 struct proc* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct proc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int
FUNC9(struct thread *td, struct linux_rt_sigqueueinfo_args *args)
{
	l_siginfo_t linfo;
	struct proc *p;
	ksiginfo_t ksi;
	int error;
	int sig;

	if (!FUNC0(args->sig))
		return (EINVAL);

	error = FUNC2(args->info, &linfo, sizeof(linfo));
	if (error != 0)
		return (error);

	if (linfo.lsi_code >= 0)
		return (EPERM);

	sig = FUNC4(args->sig);

	error = ESRCH;
	if ((p = FUNC7(args->pid)) != NULL) {
		error = FUNC6(td, p, sig);
		if (error != 0) {
			FUNC1(p);
			return (error);
		}

		FUNC3(&ksi);
		FUNC5(&linfo, &ksi, sig);
		error = FUNC8(p, NULL, sig, &ksi);
		FUNC1(p);
	}

	return (error);
}