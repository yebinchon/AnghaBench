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
typedef  char* intmax_t ;
typedef  int db_expr_t ;
typedef  int db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int tSHIFT_L ; 
 int tSHIFT_R ; 

__attribute__((used)) static bool
FUNC5(db_expr_t *valuep)
{
	db_expr_t	lhs, rhs;
	int		t;

	if (!FUNC0(&lhs))
		return (false);
	t = FUNC3();
	while (t == tSHIFT_L || t == tSHIFT_R) {
	    if (!FUNC0(&rhs)) {
		FUNC2("Expression syntax error after '%s'\n",
		    t == tSHIFT_L ? "<<" : ">>");
		FUNC1(NULL);
		/*NOTREACHED*/
	    }
	    if (rhs < 0) {
		FUNC2("Negative shift amount %jd\n", (intmax_t)rhs);
		FUNC1(NULL);
		/*NOTREACHED*/
	    }
	    if (t == tSHIFT_L)
		lhs <<= rhs;
	    else {
		/* Shift right is unsigned */
		lhs = (db_addr_t)lhs >> rhs;
	    }
	    t = FUNC3();
	}
	FUNC4(t);
	*valuep = lhs;
	return (true);
}