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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  tGREATER 133 
#define  tGREATER_EQ 132 
#define  tLESS 131 
#define  tLESS_EQ 130 
#define  tLOG_EQ 129 
#define  tLOG_NOT_EQ 128 

__attribute__((used)) static bool
FUNC6(
	db_expr_t *valuep)
{
	db_expr_t	lhs, rhs;
	int		t;

	if (!FUNC4(&lhs))
	    return (false);

	t = FUNC3();
	while (t == tLOG_EQ || t == tLOG_NOT_EQ || t == tGREATER ||
	    t == tGREATER_EQ || t == tLESS || t == tLESS_EQ) {
	    if (!FUNC4(&rhs)) {
		FUNC2("Expression syntax error after '%s'\n",
		    t == tLOG_EQ ? "==" : t == tLOG_NOT_EQ ? "!=" :
		    t == tGREATER ? ">" : t == tGREATER_EQ ? ">=" :
		    t == tLESS ? "<" : "<=");
		FUNC1(NULL);
		/*NOTREACHED*/
	    }
	    switch(t) {
		case tLOG_EQ:
		    lhs = (lhs == rhs);
		    break;
		case tLOG_NOT_EQ:
		    lhs = (lhs != rhs);
		    break;
		case tGREATER:
		    lhs = (lhs > rhs);
		    break;
		case tGREATER_EQ:
		    lhs = (lhs >= rhs);
		    break;
		case tLESS:
		    lhs = (lhs < rhs);
		    break;
		case tLESS_EQ:
		    lhs = (lhs <= rhs);
		    break;
		default:
		    FUNC0();
	    }
	    t = FUNC3();
	}
	FUNC5(t);
	*valuep = lhs;
	return (true);
}