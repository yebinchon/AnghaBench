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
typedef  scalar_t__ tcsh_number_t ;
typedef  int Char ;

/* Variables and functions */
 int /*<<< orphan*/  ADDOP ; 
 int TEXP_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ compat_expr ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int***) ; 
 int* FUNC4 (int***,int) ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static Char *
FUNC7(Char ***vp, int ignore)
{
    Char *p1, *p2;
    tcsh_number_t i = 0;

    p1 = FUNC4(vp, ignore);
    FUNC3("exp4 p1", p1, vp);
    while (FUNC5(**vp, ADDOP)) {
	const Char *op = *(*vp)++;

	FUNC0(p1, xfree);
	p2 = compat_expr ?
	    FUNC7(vp, ignore) :
	    FUNC4(vp, ignore);
	FUNC0(p2, xfree);
	FUNC3("exp4 p2", p2, vp);
	if (!(ignore & TEXP_IGNORE))
	    switch (op[0]) {

	    case '+':
		i = FUNC2(p1) + FUNC2(p2);
		break;

	    case '-':
		i = FUNC2(p1) - FUNC2(p2);
		break;
	    }
	FUNC1(p1);
	p1 = FUNC6(i);
	FUNC3("exp4 p1", p1, vp);
	if (compat_expr)
	    break;
    }
    return (p1);
}