#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct linux_sigaltstack_args {int /*<<< orphan*/ * uoss; int /*<<< orphan*/ * uss; } ;
struct TYPE_8__ {int /*<<< orphan*/  ss_flags; int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_sp; } ;
typedef  TYPE_1__ stack_t ;
typedef  int /*<<< orphan*/  lss ;
struct TYPE_9__ {int /*<<< orphan*/  ss_flags; int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_sp; } ;
typedef  TYPE_2__ l_stack_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct thread*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sigaltstack ; 

int
FUNC9(struct thread *td, struct linux_sigaltstack_args *uap)
{
	stack_t ss, oss;
	l_stack_t lss;
	int error;

	FUNC8(&lss, 0, sizeof(lss));
	FUNC0(sigaltstack, "%p, %p", uap->uss, uap->uoss);

	if (uap->uss != NULL) {
		error = FUNC4(uap->uss, &lss, sizeof(l_stack_t));
		if (error)
			return (error);

		ss.ss_sp = FUNC1(lss.ss_sp);
		ss.ss_size = lss.ss_size;
		ss.ss_flags = FUNC7(lss.ss_flags);
	}
	error = FUNC6(td, (uap->uss != NULL) ? &ss : NULL,
	    (uap->uoss != NULL) ? &oss : NULL);
	if (!error && uap->uoss != NULL) {
		lss.ss_sp = FUNC2(oss.ss_sp);
		lss.ss_size = oss.ss_size;
		lss.ss_flags = FUNC3(oss.ss_flags);
		error = FUNC5(&lss, uap->uoss, sizeof(l_stack_t));
	}

	return (error);
}