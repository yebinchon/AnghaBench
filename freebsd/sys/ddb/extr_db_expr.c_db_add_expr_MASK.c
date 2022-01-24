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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  tBIT_OR 130 
#define  tMINUS 129 
#define  tPLUS 128 

__attribute__((used)) static bool
FUNC6(db_expr_t *valuep)
{
	db_expr_t	lhs, rhs;
	int		t;

	if (!FUNC2(&lhs))
	    return (false);

	t = FUNC4();
	while (t == tPLUS || t == tMINUS || t == tBIT_OR) {
	    if (!FUNC2(&rhs)) {
		FUNC3("Expression syntax error after '%c'\n",
		    t == tPLUS ? '+' : t == tMINUS ? '-' : '|');
		FUNC1(NULL);
		/*NOTREACHED*/
	    }
	    switch (t) {
	    case tPLUS:
		lhs += rhs;
		break;
	    case tMINUS:
		lhs -= rhs;
		break;
	    case tBIT_OR:
		lhs |= rhs;
		break;
	    default:
		FUNC0();
	    }
	    t = FUNC4();
	}
	FUNC5(t);
	*valuep = lhs;
	return (true);
}