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
struct thread {scalar_t__ td_tid; } ;
typedef  scalar_t__ db_expr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  db_dot ; 
 struct thread* FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct thread*) ; 

void
FUNC6(db_expr_t tid, bool hastid, db_expr_t cnt, char *mod)
{
	struct thread *thr;
	int err;

	if (hastid) {
		thr = FUNC1(tid, false);
		if (thr != NULL) {
			err = FUNC5(thr);
			if (err != 0) {
				FUNC4("unable to switch to thread %ld\n",
				    (long)thr->td_tid);
				return;
			}
			db_dot = FUNC0();
		} else {
			FUNC4("%d: invalid thread\n", (int)tid);
			return;
		}
	}

	FUNC3();
	FUNC2(FUNC0());
}