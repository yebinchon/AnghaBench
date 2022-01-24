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
struct command {int t_dcom; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_EMPTYIF ; 
 int ERR_IMPRTHEN ; 
 int ERR_NAME ; 
 int /*<<< orphan*/  STRthen ; 
 int /*<<< orphan*/  TC_IF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ noexec ; 
 int /*<<< orphan*/  FUNC4 (struct command*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void
FUNC9(Char **v, struct command *kp)
{
    int i;
    Char **vv;

    v++;
    i = noexec ? 1 : FUNC2(&v);
    vv = v;
    if (*vv == NULL)
	FUNC8(ERR_NAME | ERR_EMPTYIF);
    if (FUNC1(*vv, STRthen)) {
	if (*++vv)
	    FUNC8(ERR_NAME | ERR_IMPRTHEN);
	FUNC6(FUNC7(STRthen));
	/*
	 * If expression was zero, then scan to else , otherwise just fall into
	 * following code.
	 */
	if (!i)
	    FUNC5(TC_IF, 0, NULL);
	return;
    }
    /*
     * Simple command attached to this if. Left shift the node in this tree,
     * munging it so we can reexecute it.
     */
    if (i) {
	FUNC3(kp->t_dcom, vv - kp->t_dcom);
	FUNC4(kp);
	FUNC0();
    }
}