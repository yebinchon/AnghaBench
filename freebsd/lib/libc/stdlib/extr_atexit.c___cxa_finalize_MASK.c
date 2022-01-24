#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dl_phdr_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* std_func ) () ;int /*<<< orphan*/  (* cxa_func ) (int /*<<< orphan*/ ) ;} ;
struct atexit_fn {scalar_t__ fn_type; void* fn_dso; TYPE_1__ fn_ptr; int /*<<< orphan*/  fn_arg; } ;
struct atexit {int ind; struct atexit_fn* fns; struct atexit* next; } ;

/* Variables and functions */
 scalar_t__ ATEXIT_FN_CXA ; 
 scalar_t__ ATEXIT_FN_EMPTY ; 
 scalar_t__ ATEXIT_FN_STD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct atexit* __atexit ; 
 int /*<<< orphan*/  FUNC3 (struct dl_phdr_info*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC4 (struct dl_phdr_info*) ; 
 int FUNC5 (void*,struct dl_phdr_info*) ; 
 int /*<<< orphan*/  atexit_mutex ; 
 int global_exit ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(void *dso)
{
	struct dl_phdr_info phdr_info;
	struct atexit *p;
	struct atexit_fn fn;
	int n, has_phdr;

	if (dso != NULL) {
		has_phdr = FUNC5(dso, &phdr_info);
	} else {
		has_phdr = 0;
		global_exit = 1;
	}

	FUNC1(&atexit_mutex);
	for (p = __atexit; p; p = p->next) {
		for (n = p->ind; --n >= 0;) {
			if (p->fns[n].fn_type == ATEXIT_FN_EMPTY)
				continue; /* already been called */
			fn = p->fns[n];
			if (dso != NULL && dso != fn.fn_dso) {
				/* wrong DSO ? */
				if (!has_phdr || global_exit ||
				    !FUNC3(&phdr_info,
				    fn.fn_ptr.cxa_func))
					continue;
			}
			/*
			  Mark entry to indicate that this particular handler
			  has already been called.
			*/
			p->fns[n].fn_type = ATEXIT_FN_EMPTY;
		        FUNC2(&atexit_mutex);
		
			/* Call the function of correct type. */
			if (fn.fn_type == ATEXIT_FN_CXA)
				fn.fn_ptr.cxa_func(fn.fn_arg);
			else if (fn.fn_type == ATEXIT_FN_STD)
				fn.fn_ptr.std_func();
			FUNC1(&atexit_mutex);
		}
	}
	FUNC2(&atexit_mutex);
	if (dso == NULL)
		FUNC0(&atexit_mutex);

	if (has_phdr && !global_exit && &__pthread_cxa_finalize != NULL)
		FUNC4(&phdr_info);
}