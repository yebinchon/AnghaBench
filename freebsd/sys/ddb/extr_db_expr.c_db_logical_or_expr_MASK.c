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
typedef  int db_expr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int tLOG_OR ; 

__attribute__((used)) static bool
FUNC5(
	db_expr_t *valuep)
{
	db_expr_t	lhs, rhs;
	int		t;

	if (!FUNC1(&lhs))
		return(false);

	t = FUNC3();
	while (t == tLOG_OR) {
		if (!FUNC1(&rhs)) {
			FUNC2("Expression syntax error after '%s'\n", "||");
			FUNC0(NULL);
			/*NOTREACHED*/
		}
		lhs = (lhs || rhs);
		t = FUNC3();
	}
	FUNC4(t);
	*valuep = lhs;
	return (true);
}