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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * STR1 ; 
 int /*<<< orphan*/  STRKSHLVL ; 
 int /*<<< orphan*/  STRshlvl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ loginsh ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 

void
FUNC12(int val)
{
    char *cp;

    if ((cp = FUNC7("SHLVL")) != NULL) {

	if (loginsh)
	    val = 1;
	else
	    val += FUNC3(cp);

	if (val <= 0) {
	    if (FUNC2(STRshlvl) != NULL)
		FUNC11(STRshlvl);
	    FUNC1(STRKSHLVL);
	}
	else {
	    Char *p;

	    p = FUNC0(val, 0, 0);
	    FUNC5(p, xfree);
	    FUNC9(STRshlvl, p, VAR_READWRITE);
	    FUNC4(p);
	    FUNC6(p);
	    FUNC10(STRKSHLVL, p);
	}
    }
    else {
	FUNC8(STRshlvl, STR1, VAR_READWRITE);
	FUNC10(STRKSHLVL, STR1);
    }
}