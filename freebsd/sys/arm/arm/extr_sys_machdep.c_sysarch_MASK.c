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
struct sysarch_args {int op; int /*<<< orphan*/  parms; } ;

/* Variables and functions */
#define  ARM_DRAIN_WRITEBUF 132 
#define  ARM_GET_TP 131 
#define  ARM_GET_VFPSTATE 130 
#define  ARM_SET_TP 129 
#define  ARM_SYNC_ICACHE 128 
 int /*<<< orphan*/  CAPFAIL_SYSCALL ; 
 int ECAPMODE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_CAPFAIL ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC8(struct thread *td, struct sysarch_args *uap)
{
	int error;

#ifdef CAPABILITY_MODE
	/*
	 * When adding new operations, add a new case statement here to
	 * explicitly indicate whether or not the operation is safe to
	 * perform in capability mode.
	 */
	if (IN_CAPABILITY_MODE(td)) {
		switch (uap->op) {
		case ARM_SYNC_ICACHE:
		case ARM_DRAIN_WRITEBUF:
		case ARM_SET_TP:
		case ARM_GET_TP:
		case ARM_GET_VFPSTATE:
			break;

		default:
#ifdef KTRACE
			if (KTRPOINT(td, KTR_CAPFAIL))
				ktrcapfail(CAPFAIL_SYSCALL, NULL, NULL);
#endif
			return (ECAPMODE);
		}
	}
#endif

	switch (uap->op) {
	case ARM_SYNC_ICACHE:
		error = FUNC5(td, uap->parms);
		break;
	case ARM_DRAIN_WRITEBUF:
		error = FUNC2(td, uap->parms);
		break;
	case ARM_SET_TP:
		error = FUNC4(td, uap->parms);
		break;
	case ARM_GET_TP:
		error = FUNC3(td, uap->parms);
		break;
	case ARM_GET_VFPSTATE:
		error = FUNC6(td, uap->parms);
		break;
	default:
		error = EINVAL;
		break;
	}
	return (error);
}