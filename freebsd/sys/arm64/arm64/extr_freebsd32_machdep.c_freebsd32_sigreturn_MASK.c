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
typedef  int /*<<< orphan*/  uc ;
struct thread {int dummy; } ;
struct freebsd32_sigreturn_args {int /*<<< orphan*/  sigcntxp; } ;

/* Variables and functions */
 int EFAULT ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct thread *td, struct freebsd32_sigreturn_args *uap)
{
	ucontext32_t uc;
	int error;

	if (uap == NULL)
		return (EFAULT);
	if (FUNC0(uap->sigcntxp, &uc, sizeof(uc)))
		return (EFAULT);
	error = FUNC2(td, &uc.uc_mcontext);
	if (error != 0)
		return (0);

	/* Restore signal mask. */
	FUNC1(td, SIG_SETMASK, &uc.uc_sigmask, NULL, 0);

	return (EJUSTRETURN);

}