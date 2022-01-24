#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct directory {scalar_t__* di_name; struct directory* di_prev; struct directory* di_next; scalar_t__ di_count; } ;
struct command {int dummy; } ;
struct TYPE_3__ {struct directory* di_prev; struct directory* di_next; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 int DIR_OLD ; 
 int ERR_CANTCHANGE ; 
 int ERR_NAME ; 
 int ERR_NOHOMEDIR ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int ERR_TOOFEW ; 
 int ERR_TOOMANY ; 
 scalar_t__* STRNULL ; 
 int /*<<< orphan*/  STRhome ; 
 int /*<<< orphan*/  STRowd ; 
 scalar_t__* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct command*) ; 
 int /*<<< orphan*/  cdtohome ; 
 scalar_t__ FUNC2 (char*) ; 
 TYPE_1__* dcwd ; 
 struct directory* FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
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
    Char *cp;
    struct directory *dp;
    int dflag = FUNC8(&v, "plvn", "[-|<dir>]");

    FUNC1(c);
    printd = 0;
    cp = (dflag & DIR_OLD) ? FUNC11(STRowd) : *v;

    if (cp == NULL) {
	if (!cdtohome)
	    FUNC9(ERR_NAME | ERR_TOOFEW);
	else if ((cp = FUNC11(STRhome)) == STRNULL || *cp == 0)
	    FUNC9(ERR_NAME | ERR_NOHOMEDIR);
	if (FUNC2(FUNC7(cp)) < 0)
	    FUNC9(ERR_NAME | ERR_CANTCHANGE);
	cp = FUNC0(cp);
    }
    else if ((dflag & DIR_OLD) == 0 && v[1] != NULL) {
	FUNC9(ERR_NAME | ERR_TOOMANY);
	/* NOTREACHED */
	return;
    }
    else if ((dp = FUNC3(cp)) != 0) {
	char   *tmp;

	printd = 1;
	if (FUNC2(tmp = FUNC7(dp->di_name)) < 0)
	    FUNC9(ERR_SYSTEM, tmp, FUNC10(errno));
	dcwd->di_prev->di_next = dcwd->di_next;
	dcwd->di_next->di_prev = dcwd->di_prev;
	FUNC5(dcwd);
	FUNC6(dp, dflag);
	return;
    }
    else
	if ((cp = FUNC4(cp, dflag & DIR_OLD)) == NULL)
	    return;
    dp = FUNC12(sizeof(struct directory), 1);
    dp->di_name = cp;
    dp->di_count = 0;
    dp->di_next = dcwd->di_next;
    dp->di_prev = dcwd->di_prev;
    dp->di_prev->di_next = dp;
    dp->di_next->di_prev = dp;
    FUNC5(dcwd);
    FUNC6(dp, dflag);
}