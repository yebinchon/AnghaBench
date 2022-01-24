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
typedef  int /*<<< orphan*/  db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 int FUNC3 () ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int tBIT_NOT ; 
 int tEXCL ; 
 int tMINUS ; 
 int tSTAR ; 

__attribute__((used)) static bool
FUNC6(db_expr_t *valuep)
{
	int	t;

	t = FUNC3();
	if (t == tMINUS) {
	    if (!FUNC6(valuep)) {
		FUNC2("Expression syntax error after '%c'\n", '-');
		FUNC0(NULL);
		/*NOTREACHED*/
	    }
	    *valuep = -*valuep;
	    return (true);
	}
	if (t == tEXCL) {
	    if(!FUNC6(valuep)) {
		FUNC2("Expression syntax error after '%c'\n", '!');
		FUNC0(NULL);
		/* NOTREACHED  */
	    }
	    *valuep = (!(*valuep));
	    return (true);
	}
	if (t == tBIT_NOT) {
	    if(!FUNC6(valuep)) {
		FUNC2("Expression syntax error after '%c'\n", '~');
		FUNC0(NULL);
		/* NOTREACHED */
	    }
	    *valuep = (~(*valuep));
	    return (true);
	}
	if (t == tSTAR) {
	    /* indirection */
	    if (!FUNC6(valuep)) {
		FUNC2("Expression syntax error after '%c'\n", '*');
		FUNC0(NULL);
		/*NOTREACHED*/
	    }
	    *valuep = FUNC1((db_addr_t)*valuep, sizeof(void *),
		false);
	    return (true);
	}
	FUNC5(t);
	return (FUNC4(valuep));
}