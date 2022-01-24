#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  uc_sigmask; int /*<<< orphan*/  uc_mcontext; } ;
typedef  TYPE_1__ ucontext32_t ;
typedef  int /*<<< orphan*/  uc ;
struct thread {int /*<<< orphan*/  td_proc; int /*<<< orphan*/  td_sigmask; } ;
struct freebsd32_swapcontext_args {int /*<<< orphan*/ * ucp; int /*<<< orphan*/ * oucp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GET_MC_CLEAR_RET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  UC32_COPY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC8(struct thread *td, struct freebsd32_swapcontext_args *uap)
{
	ucontext32_t uc;
	int ret;

	if (uap->oucp == NULL || uap->ucp == NULL)
		ret = EINVAL;
	else {
		FUNC2(&uc, sizeof(uc));
		FUNC5(td, &uc.uc_mcontext, GET_MC_CLEAR_RET);
		FUNC0(td->td_proc);
		uc.uc_sigmask = td->td_sigmask;
		FUNC1(td->td_proc);
		ret = FUNC4(&uc, uap->oucp, UC32_COPY_SIZE);
		if (ret == 0) {
			ret = FUNC3(uap->ucp, &uc, UC32_COPY_SIZE);
			if (ret == 0) {
				ret = FUNC7(td, &uc.uc_mcontext);
				FUNC6(td, SIG_SETMASK,
						&uc.uc_sigmask, NULL, 0);
			}
		}
	}
	return (ret);
}