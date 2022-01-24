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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct whyle {char** w_fe; char** w_fe0; TYPE_1__ w_end; struct whyle* w_next; int /*<<< orphan*/  w_fename; int /*<<< orphan*/  w_start; } ;
struct command {int dummy; } ;
typedef  char Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_NOMATCH ; 
 int ERR_NOPAREN ; 
 int ERR_VARALNUM ; 
 int ERR_VARBEGIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TCSH_F_SEEK ; 
 int /*<<< orphan*/  TC_FOREACH ; 
 int /*<<< orphan*/  FUNC1 (struct command*) ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char** FUNC6 (char**,int) ; 
 scalar_t__ intty ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  noexec ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char** FUNC9 (char**) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char**) ; 
 int /*<<< orphan*/  FUNC13 (char**) ; 
 struct whyle* whyles ; 
 struct whyle* FUNC14 (int,int) ; 
 int /*<<< orphan*/  zlast ; 

void
FUNC15(Char **v, struct command *c)
{
    Char *cp, *sp;
    struct whyle *nwp;
    int gflag;

    FUNC1(c);
    v++;
    cp = sp = FUNC11(*v);
    if (!FUNC7(*cp))
	FUNC10(ERR_NAME | ERR_VARBEGIN);
    do {
	cp++;
    } while (FUNC2(*cp));
    if (*cp != '\0')
	FUNC10(ERR_NAME | ERR_VARALNUM);
    cp = *v++;
    if (v[0][0] != '(' || v[FUNC3(v) - 1][0] != ')')
	FUNC10(ERR_NAME | ERR_NOPAREN);
    v++;
    gflag = FUNC12(v);
    if (gflag) {
	v = FUNC6(v, gflag);
	if (v == 0 && !noexec)
	    FUNC10(ERR_NAME | ERR_NOMATCH);
    }
    else {
	v = FUNC9(v);
	FUNC13(v);
    }
    nwp = FUNC14(1, sizeof *nwp);
    nwp->w_fe = nwp->w_fe0 = v;
    FUNC4(&nwp->w_start);
    nwp->w_fename = FUNC0(cp);
    nwp->w_next = whyles;
    nwp->w_end.type = TCSH_F_SEEK;
    whyles = nwp;
    /*
     * Pre-read the loop so as to be more comprehensible to a terminal user.
     */
    zlast = TC_FOREACH;
    if (intty)
	FUNC8();
    if (!noexec)
	FUNC5();
}