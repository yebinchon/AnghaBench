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
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  tBIT_AND 129 
 int tHASH ; 
 int tPCT ; 
 int tSLASH ; 
#define  tSTAR 128 

__attribute__((used)) static bool
FUNC7(db_expr_t *valuep)
{
	db_expr_t	lhs, rhs;
	int		t;

	if (!FUNC4(&lhs))
	    return (false);

	t = FUNC2();
	while (t == tSTAR || t == tSLASH || t == tPCT || t == tHASH ||
	    t == tBIT_AND ) {
	    if (!FUNC3(&rhs)) {
		FUNC1("Expression syntax error after '%c'\n",
		    t == tSTAR ? '*' : t == tSLASH ? '/' : t == tPCT ? '%' :
		    t == tHASH ? '#' : '&');
		FUNC0(NULL);
		/*NOTREACHED*/
	    }
	    switch(t)  {
		case tSTAR:
		    lhs *= rhs;
		    break;
		case tBIT_AND:
		    lhs &= rhs;
		    break;
		default:
		    if (rhs == 0) {
			FUNC0("Division by 0\n");
			/*NOTREACHED*/
		    }
		    if (t == tSLASH)
			lhs /= rhs;
		    else if (t == tPCT)
			lhs %= rhs;
		    else
			lhs = FUNC6(lhs, rhs);
	    }
	    t = FUNC2();
	}
	FUNC5(t);
	*valuep = lhs;
	return (true);
}