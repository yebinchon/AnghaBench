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
struct command {int dummy; } ;
struct TYPE_2__ {scalar_t__ sa_handler; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_TERMINAL ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/ * STRminus ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct command*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * gointr ; 
 scalar_t__ intty ; 
 TYPE_1__ parintr ; 
 int /*<<< orphan*/  queue_pintr ; 
 scalar_t__ setintr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(Char **v, struct command *c)
{
    Char *cp;
    Char *vv = v[1];

    FUNC1(c);
    if (parintr.sa_handler == SIG_IGN)
	return;
    if (setintr && intty)
	FUNC5(ERR_NAME | ERR_TERMINAL);
    cp = gointr;
    gointr = 0;
    FUNC7(cp);
    if (vv == 0) {
	if (setintr)
	    FUNC4(SIGINT, queue_pintr);
	else
	    (void) FUNC3(SIGINT, SIG_DFL);
	gointr = 0;
    }
    else if (FUNC2((vv = FUNC6(vv)), STRminus)) {
	(void) FUNC3(SIGINT, SIG_IGN);
	gointr = FUNC0(STRminus);
    }
    else {
	gointr = FUNC0(vv);
	FUNC4(SIGINT, queue_pintr);
    }
}