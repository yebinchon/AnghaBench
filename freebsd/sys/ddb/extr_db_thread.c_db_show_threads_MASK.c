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
struct thread {scalar_t__ td_kstack; scalar_t__ td_tid; } ;
typedef  void* jmp_buf ;
typedef  int /*<<< orphan*/  db_expr_t ;

/* Variables and functions */
 int /*<<< orphan*/  db_pager_quit ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct thread*,int) ; 
 void* FUNC2 (void*) ; 
 struct thread* FUNC3 () ; 
 struct thread* FUNC4 (struct thread*) ; 
 scalar_t__ FUNC5 (void*) ; 

void
FUNC6(db_expr_t addr, bool hasaddr, db_expr_t cnt, char *mod)
{
	jmp_buf jb;
	void *prev_jb;
	struct thread *thr;

	thr = FUNC3();
	while (!db_pager_quit && thr != NULL) {
		FUNC0("  %6ld (%p) (stack %p)  ", (long)thr->td_tid, thr,
		    (void *)thr->td_kstack);
		prev_jb = FUNC2(jb);
		if (FUNC5(jb) == 0) {
			if (FUNC1(thr, 1) != 0)
				FUNC0("***\n");
		}
		FUNC2(prev_jb);
		thr = FUNC4(thr);
	}
}