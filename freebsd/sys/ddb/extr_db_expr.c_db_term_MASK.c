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
typedef  scalar_t__ db_expr_t ;

/* Variables and functions */
 scalar_t__ db_dot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ db_last_addr ; 
 scalar_t__ db_next ; 
 scalar_t__ db_prev ; 
 int /*<<< orphan*/  FUNC3 (char*,char) ; 
 int FUNC4 () ; 
 scalar_t__ db_tok_number ; 
 char db_tok_string ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char,scalar_t__*) ; 
 int tDITTO ; 
 int tDOLLAR ; 
 int tDOT ; 
 int tDOTDOT ; 
 int tIDENT ; 
 int tLPAREN ; 
 int tNUMBER ; 
 int tPLUS ; 
 int tRPAREN ; 

__attribute__((used)) static bool
FUNC9(db_expr_t *valuep)
{
	int	t;

	t = FUNC4();
	if (t == tIDENT) {
	    if (!FUNC6(db_tok_string, valuep) &&
		!FUNC7(db_tok_string, valuep) &&
		!FUNC8(db_tok_string, valuep)) {
		FUNC3("Symbol '%s' not found\n", db_tok_string);
		FUNC0(NULL);
		/*NOTREACHED*/
	    }
	    return (true);
	}
	if (t == tNUMBER) {
	    *valuep = (db_expr_t)db_tok_number;
	    return (true);
	}
	if (t == tDOT) {
	    *valuep = (db_expr_t)db_dot;
	    return (true);
	}
	if (t == tDOTDOT) {
	    *valuep = (db_expr_t)db_prev;
	    return (true);
	}
	if (t == tPLUS) {
	    *valuep = (db_expr_t) db_next;
	    return (true);
	}
	if (t == tDITTO) {
	    *valuep = (db_expr_t)db_last_addr;
	    return (true);
	}
	if (t == tDOLLAR) {
	    if (!FUNC2(valuep))
		return (false);
	    return (true);
	}
	if (t == tLPAREN) {
	    if (!FUNC1(valuep)) {
		FUNC3("Expression syntax error after '%c'\n", '(');
		FUNC0(NULL);
		/*NOTREACHED*/
	    }
	    t = FUNC4();
	    if (t != tRPAREN) {
		FUNC3("Expression syntax error -- expected '%c'\n", ')');
		FUNC0(NULL);
		/*NOTREACHED*/
	    }
	    return (true);
	}
	FUNC5(t);
	return (false);
}