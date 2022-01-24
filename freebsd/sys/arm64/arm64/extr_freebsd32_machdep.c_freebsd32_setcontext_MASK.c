#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  uc_sigmask; int /*<<< orphan*/  uc_mcontext; } ;
typedef  TYPE_1__ ucontext32_t ;
struct thread {int dummy; } ;
struct freebsd32_setcontext_args {int /*<<< orphan*/ * ucp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  UC_COPY_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct freebsd32_setcontext_args *uap)
{
	ucontext32_t uc;
	int ret;

	if (uap->ucp == NULL)
		ret = EINVAL;
	else {
		ret = FUNC0(uap->ucp, &uc, UC_COPY_SIZE);
		if (ret == 0) {
			ret = FUNC2(td, &uc.uc_mcontext);
			if (ret == 0)
				FUNC1(td, SIG_SETMASK, &uc.uc_sigmask,
						NULL, 0);
		}
	}
	return (ret);
}