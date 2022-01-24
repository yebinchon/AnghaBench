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
struct directory {scalar_t__* di_name; struct directory* di_prev; struct directory* di_next; scalar_t__ di_count; } ;
struct command {int dummy; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 int DIR_OLD ; 
 int ERR_CANTCHANGE ; 
 int ERR_NAME ; 
 int ERR_NODIR ; 
 int ERR_NOHOMEDIR ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int ERR_TOOMANY ; 
 scalar_t__* STRNULL ; 
 int /*<<< orphan*/  STRdextract ; 
 int /*<<< orphan*/  STRhome ; 
 int /*<<< orphan*/  STRowd ; 
 int /*<<< orphan*/  STRpushdtohome ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 struct directory* dcwd ; 
 int /*<<< orphan*/  FUNC3 (struct directory*) ; 
 struct directory* FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (scalar_t__*,int) ; 
 struct directory dhead ; 
 int /*<<< orphan*/  FUNC6 (struct directory*,int) ; 
 int /*<<< orphan*/  errno ; 
 int printd ; 
 char* FUNC7 (scalar_t__*) ; 
 int FUNC8 (scalar_t__***,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC11 (int /*<<< orphan*/ ) ; 
 struct directory* FUNC12 (int,int) ; 

void
FUNC13(Char **v, struct command *c)
{
    struct directory *dp;
    Char *cp;
    int dflag = FUNC8(&v, "plvn", " [-|<dir>|+<n>]");
    
    FUNC0(c);
    printd = 1;
    cp = (dflag & DIR_OLD) ? FUNC11(STRowd) : *v;

    if (cp == NULL) {
	if (FUNC1(STRpushdtohome)) {
	    if ((cp = FUNC11(STRhome)) == STRNULL || *cp == 0)
		FUNC9(ERR_NAME | ERR_NOHOMEDIR);
	    if (FUNC2(FUNC7(cp)) < 0)
		FUNC9(ERR_NAME | ERR_CANTCHANGE);
	    if ((cp = FUNC5(cp, dflag & DIR_OLD)) == NULL)
		return;
	    dp = FUNC12(sizeof(struct directory), 1);
	    dp->di_name = cp;
	    dp->di_count = 0;
	    dp->di_prev = dcwd;
	    dp->di_next = dcwd->di_next;
	    dcwd->di_next = dp;
	    dp->di_next->di_prev = dp;
	}
	else {
	    char   *tmp;

	    if ((dp = dcwd->di_prev) == &dhead)
		dp = dhead.di_prev;
	    if (dp == dcwd)
		FUNC9(ERR_NAME | ERR_NODIR);
	    if (FUNC2(tmp = FUNC7(dp->di_name)) < 0)
		FUNC9(ERR_SYSTEM, tmp, FUNC10(errno));
	    dp->di_prev->di_next = dp->di_next;
	    dp->di_next->di_prev = dp->di_prev;
	    dp->di_next = dcwd->di_next;
	    dp->di_prev = dcwd;
	    dcwd->di_next->di_prev = dp;
	    dcwd->di_next = dp;
	}
    }
    else if ((dflag & DIR_OLD) == 0 && v[1] != NULL) {
	FUNC9(ERR_NAME | ERR_TOOMANY);
	/* NOTREACHED */
	return;
    }
    else if ((dp = FUNC4(cp)) != NULL) {
	char   *tmp;

	if (FUNC2(tmp = FUNC7(dp->di_name)) < 0)
	    FUNC9(ERR_SYSTEM, tmp, FUNC10(errno));
	/*
	 * kfk - 10 Feb 1984 - added new "extraction style" pushd +n
	 */
	if (FUNC1(STRdextract))
	    FUNC3(dp);
    }
    else {
	Char *ccp;

	if ((ccp = FUNC5(cp, dflag & DIR_OLD)) == NULL)
	    return;
	dp = FUNC12(sizeof(struct directory), 1);
	dp->di_name = ccp;
	dp->di_count = 0;
	dp->di_prev = dcwd;
	dp->di_next = dcwd->di_next;
	dcwd->di_next = dp;
	dp->di_next->di_prev = dp;
    }
    FUNC6(dp, dflag);
}