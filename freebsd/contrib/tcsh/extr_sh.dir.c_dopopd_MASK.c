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
struct directory {struct directory* di_prev; struct directory* di_next; int /*<<< orphan*/  di_name; } ;
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int DIR_OLD ; 
 int ERR_BADDIR ; 
 int ERR_EMPTY ; 
 int ERR_NAME ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int ERR_TOOMANY ; 
 int /*<<< orphan*/  STRowd ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 scalar_t__ FUNC1 (char*) ; 
 struct directory* dcwd ; 
 struct directory* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct directory*) ; 
 struct directory dhead ; 
 int /*<<< orphan*/  FUNC4 (struct directory*,int) ; 
 int /*<<< orphan*/  errno ; 
 int printd ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ***,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(Char **v, struct command *c)
{
    Char *cp;
    struct directory *dp, *p = NULL;
    int dflag = FUNC7(&v, "plvn", " [-|+<n>]");

    FUNC0(c);
    printd = 1;
    cp = (dflag & DIR_OLD) ? FUNC10(STRowd) : *v;

    if (cp == NULL)
	dp = dcwd;
    else if ((dflag & DIR_OLD) == 0 && v[1] != NULL) {
	FUNC8(ERR_NAME | ERR_TOOMANY);
	/* NOTREACHED */
	return;
    }
    else if ((dp = FUNC2(cp)) == 0)
	FUNC8(ERR_NAME | ERR_BADDIR);
    if (dp->di_prev == &dhead && dp->di_next == &dhead)
	FUNC8(ERR_NAME | ERR_EMPTY);
    if (dp == dcwd) {
	char   *tmp;

	if ((p = dp->di_prev) == &dhead)
	    p = dhead.di_prev;
	if (FUNC1(tmp = FUNC6(p->di_name)) < 0)
	    FUNC8(ERR_SYSTEM, tmp, FUNC9(errno));
    }
    dp->di_prev->di_next = dp->di_next;
    dp->di_next->di_prev = dp->di_prev;
    FUNC3(dp);
    if (dp == dcwd) {
        FUNC4(p, dflag);
    }
    else {
	FUNC5(dflag);
    }
}