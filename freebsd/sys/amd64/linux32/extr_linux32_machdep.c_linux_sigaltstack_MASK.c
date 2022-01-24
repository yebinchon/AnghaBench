#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct linux_sigaltstack_args {int /*<<< orphan*/ * uoss; int /*<<< orphan*/ * uss; } ;
struct TYPE_7__ {int /*<<< orphan*/  ss_flags; int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_sp; } ;
typedef  TYPE_1__ stack_t ;
struct TYPE_8__ {int /*<<< orphan*/  ss_flags; int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_sp; } ;
typedef  TYPE_2__ l_stack_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct thread*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct thread *td, struct linux_sigaltstack_args *uap)
{
	stack_t ss, oss;
	l_stack_t lss;
	int error;

	if (uap->uss != NULL) {
		error = FUNC3(uap->uss, &lss, sizeof(l_stack_t));
		if (error)
			return (error);

		ss.ss_sp = FUNC0(lss.ss_sp);
		ss.ss_size = lss.ss_size;
		ss.ss_flags = FUNC6(lss.ss_flags);
	}
	error = FUNC5(td, (uap->uss != NULL) ? &ss : NULL,
	    (uap->uoss != NULL) ? &oss : NULL);
	if (!error && uap->uoss != NULL) {
		lss.ss_sp = FUNC1(oss.ss_sp);
		lss.ss_size = oss.ss_size;
		lss.ss_flags = FUNC2(oss.ss_flags);
		error = FUNC4(&lss, uap->uoss, sizeof(l_stack_t));
	}

	return (error);
}