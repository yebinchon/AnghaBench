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
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_HFLAG ; 
 int ERR_MFLAG ; 
 int ERR_NAME ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int /*<<< orphan*/  G_ERROR ; 
 int /*<<< orphan*/  STRmh ; 
 int /*<<< orphan*/  STRmm ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  bequiet ; 
 int /*<<< orphan*/  blk_cleanup ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(Char **t, struct command *c)
{
    Char *f;
    int    hflg = 0;
    char *file;

    FUNC0(c);
    t++;
    if (*t && FUNC3(*t, STRmh)) {
	if (*++t == NULL)
	    FUNC8(ERR_NAME | ERR_HFLAG);
	hflg++;
    }
    else if (*t && FUNC3(*t, STRmm)) {
    	if (*++t == NULL)
	    FUNC8(ERR_NAME | ERR_MFLAG);
	hflg = 2;
    }

    f = FUNC5(*t++, G_ERROR);
    file = FUNC10(FUNC6(f));
    FUNC1(file, xfree);
    FUNC11(f);
    t = FUNC4(t);
    FUNC1(t, blk_cleanup);
    if ((!FUNC7(file, 0, hflg, t)) && (!hflg) && (!bequiet))
	FUNC8(ERR_SYSTEM, file, FUNC9(errno));
    FUNC2(file);
}