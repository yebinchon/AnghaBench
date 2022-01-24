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
struct TYPE_3__ {int c_flag; char* c_name; int /*<<< orphan*/  c_done_cv; scalar_t__ c_arg; int /*<<< orphan*/  (* c_func ) (scalar_t__,int) ;struct TYPE_3__* c_next; } ;
typedef  TYPE_1__ callb_t ;
struct TYPE_4__ {int /*<<< orphan*/  ct_lock; TYPE_1__** ct_first_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CALLB_EXECUTING ; 
 int CALLB_FREE ; 
 int NCBCLASS ; 
 TYPE_2__* ct ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

void *
FUNC7(int class, int code)
{
	callb_t *cp;
	void *ret = NULL;

	FUNC0(class < NCBCLASS);

	FUNC3(&ct->ct_lock);

	for (cp = ct->ct_first_cb[class];
	    cp != NULL && ret == 0; cp = cp->c_next) {
		while (cp->c_flag & CALLB_EXECUTING)
			FUNC2(&cp->c_done_cv, &ct->ct_lock);
		/*
		 * cont if the callb is deleted while we're sleeping
		 */
		if (cp->c_flag == CALLB_FREE)
			continue;
		cp->c_flag |= CALLB_EXECUTING;

#ifdef CALLB_DEBUG
		printf("callb_execute: name=%s func=%p arg=%p\n",
		    cp->c_name, (void *)cp->c_func, (void *)cp->c_arg);
#endif /* CALLB_DEBUG */

		FUNC4(&ct->ct_lock);
		/* If callback function fails, pass back client's name */
		if (!(*cp->c_func)(cp->c_arg, code))
			ret = cp->c_name;
		FUNC3(&ct->ct_lock);

		cp->c_flag &= ~CALLB_EXECUTING;
		FUNC1(&cp->c_done_cv);
	}
	FUNC4(&ct->ct_lock);
	return (ret);
}