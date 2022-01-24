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
typedef  scalar_t__ Char ;

/* Variables and functions */
 char* FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SHIN ; 
 scalar_t__* STRNULL ; 
 int /*<<< orphan*/  STRlistmax ; 
 int /*<<< orphan*/  STRlistmaxrows ; 
 int /*<<< orphan*/  TRUE ; 
 int TW_JOB ; 
 int TW_SIGNAL ; 
 scalar_t__ Tty_raw_mode ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  fcompare ; 
 int FUNC4 (scalar_t__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 
 scalar_t__** FUNC10 () ; 
 scalar_t__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC15(int looking, int numitems, int list_max)
{
    Char *ptr;
    int max_items = 0;
    int max_rows = 0;

    if (numitems == 0)
	return;

    if ((ptr = FUNC11(STRlistmax)) != STRNULL) {
	while (*ptr) {
	    if (!FUNC1(*ptr)) {
		max_items = 0;
		break;
	    }
	    max_items = max_items * 10 + *ptr++ - '0';
	}
	if ((max_items > 0) && (numitems > max_items) && list_max)
	    max_items = numitems;
	else
	    max_items = 0;
    }

    if (max_items == 0 && (ptr = FUNC11(STRlistmaxrows)) != STRNULL) {
	int rows;

	while (*ptr) {
	    if (!FUNC1(*ptr)) {
		max_rows = 0;
		break;
	    }
	    max_rows = max_rows * 10 + *ptr++ - '0';
	}
	if (max_rows != 0 && looking != TW_JOB)
	    rows = FUNC4(FUNC10(), numitems, TRUE);
	else
	    rows = numitems; /* underestimate for lines wider than the termH */
	if ((max_rows > 0) && (rows > max_rows) && list_max)
	    max_rows = rows;
	else
	    max_rows = 0;
    }


    if (max_items || max_rows) {
	char    	 tc, *sname;
	const char	*name;
	int maxs;

	if (max_items) {
	    name = FUNC0(30, 5, "items");
	    maxs = max_items;
	}
	else {
	    name = FUNC0(30, 6, "rows");
	    maxs = max_rows;
	}

	sname = FUNC9(name);
	FUNC2(sname, xfree);
	FUNC12(FUNC0(30, 7, "There are %d %s, list them anyway? [n/y] "),
		maxs, sname);
	FUNC3(sname);
	FUNC5();
	/* We should be in Rawmode here, so no \n to catch */
	(void) FUNC14(SHIN, &tc, 1);
	FUNC12("%c\r\n", tc);	/* echo the char, do a newline */
	/*
	 * Perhaps we should use the yesexpr from the
	 * actual locale
	 */
	if (FUNC8(FUNC0(30, 13, "Yy"), tc) == NULL)
	    return;
    }

    if (looking != TW_SIGNAL)
	FUNC7(FUNC10(), numitems, sizeof(Char *), fcompare);
    if (looking != TW_JOB)
	FUNC6(STRNULL, FUNC10(), numitems, TRUE);
    else {
	/*
	 * print one item on every line because jobs can have spaces
	 * and it is confusing.
	 */
	int i;
	Char **w = FUNC10();

	for (i = 0; i < numitems; i++) {
	    FUNC12("%S", w[i]);
	    if (Tty_raw_mode)
		FUNC13('\r');
	    FUNC13('\n');
	}
    }
}