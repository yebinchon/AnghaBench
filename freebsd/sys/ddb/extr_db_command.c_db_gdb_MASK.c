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
typedef  int /*<<< orphan*/  db_expr_t ;

/* Variables and functions */
 int db_cmd_loop_done ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{

	if (FUNC1("gdb") != 0) {
		FUNC0("The remote GDB backend could not be selected.\n");
		return;
	}
	/*
	 * Mark that we are done in the debugger.  kdb_trap()
	 * should re-enter with the new backend.
	 */
	db_cmd_loop_done = 1;
	FUNC0("(ctrl-c will return control to ddb)\n");
}