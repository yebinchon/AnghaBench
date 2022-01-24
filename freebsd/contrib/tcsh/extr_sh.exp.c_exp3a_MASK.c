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
typedef  char Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ compat_expr ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char***) ; 
 char* FUNC5 (char***,int) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static Char *
FUNC7(Char ***vp, int ignore)
{
    Char *p1, *p2;
    const Char *op;
    tcsh_number_t i;

    p1 = FUNC5(vp, ignore);
    FUNC4("exp3a p1", p1, vp);
    op = **vp;
    if (op && FUNC0("<>", op[0]) && op[0] == op[1]) {
	(*vp)++;
	FUNC1(p1, xfree);
	p2 = compat_expr ?
	    FUNC7(vp, ignore) :
	    FUNC5(vp, ignore);
	FUNC1(p2, xfree);
	FUNC4("exp3a p2", p2, vp);
	if (op[0] == '<')
	    i = FUNC3(p1) << FUNC3(p2);
	else
	    i = FUNC3(p1) >> FUNC3(p2);
	FUNC2(p1);
	p1 = FUNC6(i);
	FUNC4("exp3a p1", p1, vp);
    }
    return (p1);
}