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
typedef  void* jmp_buf ;

/* Variables and functions */
 char const* KDB_WHY_UNSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  db_dot ; 
 scalar_t__ db_inst_count ; 
 int /*<<< orphan*/  db_load_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int,int,int*,int*) ; 
 int /*<<< orphan*/  db_store_count ; 
 void* FUNC9 (void*) ; 
 char* kdb_why ; 
 scalar_t__ FUNC10 (void*) ; 

__attribute__((used)) static int
FUNC11(int type, int code)
{
	jmp_buf jb;
	void *prev_jb;
	bool bkpt, watchpt;
	const char *why;

	/*
	 * Don't handle the trap if the console is unavailable (i.e. it
	 * is in graphics mode).
	 */
	if (FUNC1())
		return (0);

	if (FUNC8(type, code, &bkpt, &watchpt)) {
		if (db_inst_count) {
			FUNC5("After %d instructions (%d loads, %d stores),\n",
			    db_inst_count, db_load_count, db_store_count);
		}
		prev_jb = FUNC9(jb);
		if (FUNC10(jb) == 0) {
			db_dot = FUNC0();
			FUNC4();
			if (bkpt)
				FUNC5("Breakpoint at\t");
			else if (watchpt)
				FUNC5("Watchpoint at\t");
			else
				FUNC5("Stopped at\t");
			FUNC3(db_dot);
		}
		why = kdb_why;
		FUNC7(why != KDB_WHY_UNSET ? why : "unknown");
		FUNC2();
		(void)FUNC9(prev_jb);
	}

	FUNC6(watchpt);

	return (1);
}