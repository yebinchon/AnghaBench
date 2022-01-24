#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int u_int ;
struct user_segment_descriptor {int dummy; } ;
struct thread {int* td_retval; TYPE_2__* td_proc; } ;
struct proc_ldt {scalar_t__ ldt_base; } ;
struct i386_ldt_args {int start; int num; scalar_t__ descs; } ;
struct TYPE_3__ {struct proc_ldt* md_ldt; } ;
struct TYPE_4__ {TYPE_1__ p_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int max_ldt_segment ; 
 int FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,void*) ; 

int
FUNC7(struct thread *td, struct i386_ldt_args *uap)
{
	struct proc_ldt *pldt;
	struct user_segment_descriptor *lp;
	uint64_t *data;
	u_int i, num;
	int error;

#ifdef	DEBUG
	printf("amd64_get_ldt: start=%u num=%u descs=%p\n",
	    uap->start, uap->num, (void *)uap->descs);
#endif

	pldt = td->td_proc->p_md.md_ldt;
	if (pldt == NULL || uap->start >= max_ldt_segment || uap->num == 0) {
		td->td_retval[0] = 0;
		return (0);
	}
	num = FUNC3(uap->num, max_ldt_segment - uap->start);
	lp = &((struct user_segment_descriptor *)(pldt->ldt_base))[uap->start];
	data = FUNC2(num * sizeof(struct user_segment_descriptor), M_TEMP,
	    M_WAITOK);
	FUNC4(&dt_lock);
	for (i = 0; i < num; i++)
		data[i] = ((volatile uint64_t *)lp)[i];
	FUNC5(&dt_lock);
	error = FUNC0(data, uap->descs, num *
	    sizeof(struct user_segment_descriptor));
	FUNC1(data, M_TEMP);
	if (error == 0)
		td->td_retval[0] = num;
	return (error);
}