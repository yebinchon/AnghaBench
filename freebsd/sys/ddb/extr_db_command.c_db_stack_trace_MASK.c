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
struct thread {scalar_t__ td_tid; TYPE_1__* td_proc; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int db_expr_t ;
struct TYPE_2__ {int p_pid; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int db_radix ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct thread* FUNC7 (int) ; 
 struct thread* FUNC8 (int /*<<< orphan*/ ) ; 
 struct thread* kdb_thread ; 
 int tCOMMA ; 

__attribute__((used)) static void
FUNC9(db_expr_t tid, bool hastid, db_expr_t count, char *modif)
{
	struct thread *td;
	db_expr_t radix;
	pid_t pid;
	int t;

	/*
	 * We parse our own arguments. We don't like the default radix.
	 */
	radix = db_radix;
	db_radix = 10;
	hastid = FUNC0(&tid);
	t = FUNC3();
	if (t == tCOMMA) {
		if (!FUNC0(&count)) {
			FUNC2("Count missing\n");
			FUNC1();
			db_radix = radix;
			return;
		}
	} else {
		FUNC6(t);
		count = -1;
	}
	FUNC4();
	db_radix = radix;

	if (hastid) {
		td = FUNC8((lwpid_t)tid);
		if (td == NULL)
			td = FUNC7((pid_t)tid);
		if (td == NULL) {
			FUNC2("Thread %d not found\n", (int)tid);
			return;
		}
	} else
		td = kdb_thread;
	if (td->td_proc != NULL)
		pid = td->td_proc->p_pid;
	else
		pid = -1;
	FUNC2("Tracing pid %d tid %ld td %p\n", pid, (long)td->td_tid, td);
	FUNC5(td, count);
}