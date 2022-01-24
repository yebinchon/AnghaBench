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
typedef  int /*<<< orphan*/  show ;
typedef  int /*<<< orphan*/  TERMTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_KP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  key_a1 ; 
 int /*<<< orphan*/  key_a3 ; 
 int /*<<< orphan*/  key_b2 ; 
 int /*<<< orphan*/  key_c1 ; 
 int /*<<< orphan*/  key_c3 ; 
 int /*<<< orphan*/  key_dc ; 
 int /*<<< orphan*/  key_ic ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(TERMTYPE *tp)
{
    char show[80];

    if (FUNC1(key_a1) &&
	FUNC1(key_a3) &&
	FUNC1(key_b2) &&
	FUNC1(key_c1) &&
	FUNC1(key_c3)) {
	char final[MAX_KP + 1];
	long list[MAX_KP];
	int increase = 0;
	int j, k, kk;
	long last;
	long test;

	final[0] = FUNC5(key_a1);
	final[1] = FUNC5(key_a3);
	final[2] = FUNC5(key_b2);
	final[3] = FUNC5(key_c1);
	final[4] = FUNC5(key_c3);
	final[5] = '\0';

	/* special case: legacy coding using 1,2,3,0,. on the bottom */
	FUNC4(FUNC8(final) <= MAX_KP);
	if (!FUNC7(final, "qsrpn"))
	    return;

	list[0] = FUNC6(key_a1);
	list[1] = FUNC6(key_a3);
	list[2] = FUNC6(key_b2);
	list[3] = FUNC6(key_c1);
	list[4] = FUNC6(key_c3);

	/* check that they're all vt100 keys */
	for (j = 0; j < MAX_KP; ++j) {
	    if (list[j] < 0) {
		return;
	    }
	}

	/* check if they're all in increasing order */
	for (j = 1; j < MAX_KP; ++j) {
	    if (list[j] > list[j - 1]) {
		++increase;
	    }
	}
	if (increase != (MAX_KP - 1)) {
	    show[0] = '\0';

	    for (j = 0, last = -1; j < MAX_KP; ++j) {
		for (k = 0, kk = -1, test = 100; k < 5; ++k) {
		    if (list[k] > last &&
			list[k] < test) {
			test = list[k];
			kk = k;
		    }
		}
		last = test;
		FUNC4(FUNC8(show) < (MAX_KP * 4));
		switch (kk) {
		case 0:
		    FUNC2(show, " ka1", sizeof(show));
		    break;
		case 1:
		    FUNC2(show, " ka3", sizeof(show));
		    break;
		case 2:
		    FUNC2(show, " kb2", sizeof(show));
		    break;
		case 3:
		    FUNC2(show, " kc1", sizeof(show));
		    break;
		case 4:
		    FUNC2(show, " kc3", sizeof(show));
		    break;
		}
	    }

	    FUNC3("vt100 keypad order inconsistent: %s", show);
	}

    } else if (FUNC1(key_a1) ||
	       FUNC1(key_a3) ||
	       FUNC1(key_b2) ||
	       FUNC1(key_c1) ||
	       FUNC1(key_c3)) {
	show[0] = '\0';
	if (FUNC6(key_a1) >= 0)
	    FUNC2(show, " ka1", sizeof(show));
	if (FUNC6(key_a3) >= 0)
	    FUNC2(show, " ka3", sizeof(show));
	if (FUNC6(key_b2) >= 0)
	    FUNC2(show, " kb2", sizeof(show));
	if (FUNC6(key_c1) >= 0)
	    FUNC2(show, " kc1", sizeof(show));
	if (FUNC6(key_c3) >= 0)
	    FUNC2(show, " kc3", sizeof(show));
	if (*show != '\0')
	    FUNC3("vt100 keypad map incomplete:%s", show);
    }

    /*
     * These warnings are useful for consistency checks - it is possible that
     * there are real terminals with mismatches in these
     */
    FUNC0(key_ic, key_dc);
}