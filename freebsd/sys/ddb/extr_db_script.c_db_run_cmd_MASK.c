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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  db_tok_string ; 
 int tEOL ; 
 int tIDENT ; 

void
FUNC3(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
	int t;

	/*
	 * Right now, we accept exactly one argument.  In the future, we
	 * might want to accept flags and arguments to the script itself.
	 */
	t = FUNC1();
	if (t != tIDENT)
		FUNC0("?\n");

	if (FUNC1() != tEOL)
		FUNC0("?\n");

	FUNC2(db_tok_string, 1);
}