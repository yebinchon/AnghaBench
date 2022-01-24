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
struct user_segment_descriptor {int num; int /*<<< orphan*/ * descs; } ;
struct thread {int /*<<< orphan*/  td_pcb; } ;
struct sysarch_args {int op; int /*<<< orphan*/ * parms; } ;
struct i386_ldt_args {int num; int /*<<< orphan*/ * descs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
#define  I386_GET_LDT 129 
#define  I386_SET_LDT 128 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 int UIO_USERSPACE ; 
 int FUNC1 (struct thread*,struct user_segment_descriptor*) ; 
 int FUNC2 (struct thread*,struct user_segment_descriptor*,struct user_segment_descriptor*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct user_segment_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct user_segment_descriptor*,int /*<<< orphan*/ ) ; 
 struct user_segment_descriptor* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int max_ldt_segment ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct thread *td, struct sysarch_args *uap, int uap_space)
{
	struct i386_ldt_args *largs, la;
	struct user_segment_descriptor *lp;
	int error = 0;

	/*
	 * XXXKIB check that the BSM generation code knows to encode
	 * the op argument.
	 */
	FUNC0(uap->op);
	if (uap_space == UIO_USERSPACE) {
		error = FUNC3(uap->parms, &la, sizeof(struct i386_ldt_args));
		if (error != 0)
			return (error);
		largs = &la;
	} else
		largs = (struct i386_ldt_args *)uap->parms;

	switch (uap->op) {
	case I386_GET_LDT:
		error = FUNC1(td, largs);
		break;
	case I386_SET_LDT:
		if (largs->descs != NULL && largs->num > max_ldt_segment)
			return (EINVAL);
		FUNC6(td->td_pcb, PCB_FULL_IRET);
		if (largs->descs != NULL) {
			lp = FUNC5(largs->num * sizeof(struct
			    user_segment_descriptor), M_TEMP, M_WAITOK);
			error = FUNC3(largs->descs, lp, largs->num *
			    sizeof(struct user_segment_descriptor));
			if (error == 0)
				error = FUNC2(td, largs, lp);
			FUNC4(lp, M_TEMP);
		} else {
			error = FUNC2(td, largs, NULL);
		}
		break;
	}
	return (error);
}