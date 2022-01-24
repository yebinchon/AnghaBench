#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int ptrdiff_t ;
struct TYPE_2__ {size_t len; char* s; } ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_BADSUBST ; 
 int /*<<< orphan*/  ERR_OLD ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ FUNC0 (char) ; 
 char* STRNULL ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char) ; 
 scalar_t__ dol_flag_a ; 
 scalar_t__ dolmcnt ; 
 TYPE_1__ dolmod ; 
 char* dolp ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ seterr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (size_t) ; 

__attribute__((used)) static void
FUNC16(Char *cp)
{
    Char *dp;
    size_t i;

    if (dolmod.len == 0 || dolmcnt == 0) {
	dolp = cp;
	return;
    }
    cp = FUNC5(cp);
    for (i = 0; i < dolmod.len; i++) {
	int didmod = 0;

	/* handle s// [eichin:19910926.0510EST] */
	if(dolmod.s[i] == 's') {
	    Char delim;
	    Char *lhsub, *rhsub, *np;
	    size_t lhlen = 0, rhlen = 0;

	    delim = dolmod.s[++i];
	    if (!delim || FUNC10(delim)
		|| FUNC0(delim) || FUNC8(" \t\n", delim)) {
		FUNC11(ERR_BADSUBST);
		break;
	    }
	    lhsub = &dolmod.s[++i];
	    while(dolmod.s[i] != delim && dolmod.s[++i]) {
		lhlen++;
	    }
	    dolmod.s[i] = 0;
	    rhsub = &dolmod.s[++i];
	    while(dolmod.s[i] != delim && dolmod.s[++i]) {
		rhlen++;
	    }
	    dolmod.s[i] = 0;

	    FUNC13(lhsub);
	    FUNC13(rhsub);
	    FUNC13(cp);
	    dp = cp;
	    do {
		dp = FUNC6(dp, lhsub);
		if (dp) {
		    ptrdiff_t diff = dp - cp;
		    size_t len = (FUNC3(cp) + 1 - lhlen + rhlen);
		    np = FUNC15(len * sizeof(Char));
		    (void) FUNC4(np, cp, diff);
		    (void) FUNC2(np + diff, rhsub);
		    (void) FUNC2(np + diff + rhlen, dp + lhlen);

		    FUNC14(cp);
		    dp = cp = np;
		    cp[--len] = '\0';
		    didmod = 1;
		    if (diff >= (ssize_t)len)
			break;
		} else {
		    /* should this do a seterror? */
		    break;
		}
	    }
	    while (dol_flag_a != 0);
	    /*
	     * restore dolmod for additional words
	     */
	    dolmod.s[i] = rhsub[-1] = (Char) delim;
        } else {

	    do {
		if ((dp = FUNC9(cp, dolmod.s[i])) != NULL) {
		    didmod = 1;
		    if (FUNC1(cp, dp) == 0) {
			FUNC14(cp);
			cp = dp;
			break;
		    }
		    else {
			FUNC14(cp);
			cp = dp;
		    }
		}
		else
		    break;
	    }
	    while (dol_flag_a != 0);
	}
	if (didmod && dolmcnt != INT_MAX)
	    dolmcnt--;
#ifdef notdef
	else
	    break;
#endif
    }

    FUNC7(cp);

    dolp = STRNULL;
    if (seterr)
	FUNC12(ERR_OLD);
}