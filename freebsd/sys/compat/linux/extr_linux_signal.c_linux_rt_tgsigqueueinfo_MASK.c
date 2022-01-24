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
struct linux_rt_tgsigqueueinfo_args {int /*<<< orphan*/  sig; int /*<<< orphan*/  tgid; int /*<<< orphan*/  tid; int /*<<< orphan*/  uinfo; } ;
typedef  int /*<<< orphan*/  linfo ;
struct TYPE_4__ {scalar_t__ lsi_code; } ;
typedef  TYPE_1__ l_siginfo_t ;
typedef  int /*<<< orphan*/  ksiginfo_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct thread*,struct thread*,int /*<<< orphan*/ *) ; 
 struct thread* FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int
FUNC7(struct thread *td, struct linux_rt_tgsigqueueinfo_args *args)
{
	l_siginfo_t linfo;
	struct thread *tds;
	ksiginfo_t ksi;
	int error;
	int sig;

	if (!FUNC0(args->sig))
		return (EINVAL);

	error = FUNC1(args->uinfo, &linfo, sizeof(linfo));
	if (error != 0)
		return (error);

	if (linfo.lsi_code >= 0)
		return (EPERM);

	tds = FUNC4(td, args->tid, args->tgid);
	if (tds == NULL)
		return (ESRCH);

	sig = FUNC5(args->sig);
	FUNC2(&ksi);
	FUNC6(&linfo, &ksi, sig);
	return (FUNC3(td, tds, &ksi));
}