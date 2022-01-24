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
typedef  int /*<<< orphan*/  uc ;
struct thread {int /*<<< orphan*/  td_proc; int /*<<< orphan*/  td_sigmask; } ;
struct ia32_ucontext {int /*<<< orphan*/  uc_sigmask; int /*<<< orphan*/  uc_mcontext; } ;
struct freebsd32_getcontext_args {int /*<<< orphan*/ * ucp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GET_MC_CLEAR_RET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UC_COPY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ia32_ucontext*,int) ; 
 int FUNC3 (struct ia32_ucontext*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(struct thread *td, struct freebsd32_getcontext_args *uap)
{
	struct ia32_ucontext uc;
	int ret;

	if (uap->ucp == NULL)
		ret = EINVAL;
	else {
		FUNC2(&uc, sizeof(uc));
		FUNC4(td, &uc.uc_mcontext, GET_MC_CLEAR_RET);
		FUNC0(td->td_proc);
		uc.uc_sigmask = td->td_sigmask;
		FUNC1(td->td_proc);
		ret = FUNC3(&uc, uap->ucp, UC_COPY_SIZE);
	}
	return (ret);
}