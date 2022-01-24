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
typedef  int tcsh_number_t ;
typedef  int Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DIV0 ; 
 int /*<<< orphan*/  ERR_MOD0 ; 
 int /*<<< orphan*/  MULOP ; 
 int* FUNC0 (int const*) ; 
 int TEXP_IGNORE ; 
 int TEXP_NOGLOB ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  (*) (int*)) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ compat_expr ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*,int***) ; 
 int* FUNC5 (int***,int) ; 
 scalar_t__ FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static Char *
FUNC10(Char ***vp, int ignore)
{
    Char *p1, *p2;
    tcsh_number_t i = 0;

    p1 = FUNC5(vp, ignore);
    FUNC4("exp5 p1", p1, vp);

    while (FUNC6(**vp, MULOP)) {
	const Char *op = *(*vp)++;
	if ((ignore & TEXP_NOGLOB) != 0) {
	    /*
	     * We are just trying to get the right side of
	     * a =~ or !~ operator
	     */
	    FUNC9(p1);
	    return FUNC0(op);
	}

	FUNC1(p1, xfree);
	p2 = compat_expr ? 
	    FUNC10(vp, ignore) :
	    FUNC5(vp, ignore);
	FUNC1(p2, xfree);
	FUNC4("exp5 p2", p2, vp);
	if (!(ignore & TEXP_IGNORE))
	    switch (op[0]) {

	    case '*':
		i = FUNC3(p1) * FUNC3(p2);
		break;

	    case '/':
		i = FUNC3(p2);
		if (i == 0)
		    FUNC8(ERR_DIV0);
		i = FUNC3(p1) / i;
		break;

	    case '%':
		i = FUNC3(p2);
		if (i == 0)
		    FUNC8(ERR_MOD0);
		i = FUNC3(p1) % i;
		break;
	    }
	FUNC2(p1);
	p1 = FUNC7(i);
	FUNC4("exp5 p1", p1, vp);
	if (compat_expr)
	    break;
    }
    return (p1);
}