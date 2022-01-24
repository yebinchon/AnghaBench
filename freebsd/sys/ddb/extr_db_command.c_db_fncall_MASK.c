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
 scalar_t__ FUNC0 (scalar_t__,scalar_t__*,int,scalar_t__*) ; 
 int DB_MAXARGS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int tCOMMA ; 
 int tLPAREN ; 
 int tRPAREN ; 

__attribute__((used)) static void
FUNC8(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{
	db_expr_t	fn_addr;
	db_expr_t	args[DB_MAXARGS];
	int		nargs = 0;
	db_expr_t	retval;
	int		t;

	if (!FUNC2(&fn_addr)) {
	    FUNC4("Bad function\n");
	    FUNC3();
	    return;
	}

	t = FUNC5();
	if (t == tLPAREN) {
	    if (FUNC2(&args[0])) {
		nargs++;
		while ((t = FUNC5()) == tCOMMA) {
		    if (nargs == DB_MAXARGS) {
			FUNC4("Too many arguments (max %d)\n", DB_MAXARGS);
			FUNC3();
			return;
		    }
		    if (!FUNC2(&args[nargs])) {
			FUNC4("Argument missing\n");
			FUNC3();
			return;
		    }
		    nargs++;
		}
		FUNC7(t);
	    }
	    if (FUNC5() != tRPAREN) {
	        FUNC4("Mismatched parens\n");
		FUNC3();
		return;
	    }
	}
	FUNC6();
	FUNC1();

	if (FUNC0(fn_addr, &retval, nargs, args))
		FUNC4("= %#lr\n", (long)retval);
}