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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
#define  EQEQ 131 
#define  EQMATCH 130 
 int /*<<< orphan*/  EQOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  NOTEQ 129 
#define  NOTEQMATCH 128 
 int TEXP_IGNORE ; 
 int TEXP_NOGLOB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ***,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static tcsh_number_t
FUNC8(Char ***vp, int ignore)
{
    Char *p1 = FUNC6(vp, ignore);
    Char *p2;
    tcsh_number_t i;

    FUNC1(p1, xfree);
    FUNC5("exp2c p1", p1, vp);
    if ((i = FUNC7(**vp, EQOP)) != 0) {
	(*vp)++;
	if (i == EQMATCH || i == NOTEQMATCH)
	    ignore |= TEXP_NOGLOB;
	p2 = FUNC6(vp, ignore);
	FUNC1(p2, xfree);
	FUNC5("exp2c p2", p2, vp);
	if (!(ignore & TEXP_IGNORE))
	    switch ((int)i) {

	    case EQEQ:
		i = FUNC4(p1, p2);
		break;

	    case NOTEQ:
		i = !FUNC4(p1, p2);
		break;

	    case EQMATCH:
		i = FUNC0(p1, p2);
		break;

	    case NOTEQMATCH:
		i = !FUNC0(p1, p2);
		break;
	    }
	FUNC2(p1);
	return (i);
    }
    i = FUNC3(p1);
    FUNC2(p1);
    return (i);
}