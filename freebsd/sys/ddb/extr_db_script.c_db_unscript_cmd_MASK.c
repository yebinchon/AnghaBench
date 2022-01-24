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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  db_tok_string ; 
 int tIDENT ; 

void
FUNC4(db_expr_t addr, bool have_addr, db_expr_t count,
    char *modif)
{
	int error, t;

	t = FUNC1();
	if (t != tIDENT) {
		FUNC0("?\n");
		FUNC3();
		return;
	}

	error = FUNC2(db_tok_string);
	if (error == ENOENT) {
		FUNC0("script '%s' not found\n", db_tok_string);
		FUNC3();
		return;
	}
	FUNC3();
}