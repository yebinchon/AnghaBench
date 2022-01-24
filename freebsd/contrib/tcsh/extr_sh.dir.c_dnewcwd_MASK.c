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
struct directory {int /*<<< orphan*/  di_name; TYPE_1__* di_next; struct directory* di_prev; } ;
struct TYPE_2__ {struct directory* di_prev; } ;

/* Variables and functions */
 int DIR_PRINT ; 
 int /*<<< orphan*/  STRdunique ; 
 int /*<<< orphan*/  STRpushdsilent ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bequiet ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct directory* dcwd ; 
 int /*<<< orphan*/  FUNC3 (struct directory*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct directory dhead ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int printd ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct directory *dp, int dflag)
{
    int print;

    if (FUNC1(STRdunique)) {
	struct directory *dn;

	for (dn = dhead.di_prev; dn != &dhead; dn = dn->di_prev) 
	    if (dn != dp && FUNC0(dn->di_name, dp->di_name) == 0) {
		dn->di_next->di_prev = dn->di_prev;
		dn->di_prev->di_next = dn->di_next;
		FUNC3(dn);
		break;
	    }
    }
    dcwd = dp;
    FUNC5(dcwd->di_name);
    FUNC4();
    print = printd;		/* if printd is set, print dirstack... */
    if (FUNC1(STRpushdsilent))	/* but pushdsilent overrides printd... */
	print = 0;
    if (dflag & DIR_PRINT)	/* but DIR_PRINT overrides pushdsilent... */
	print = 1;
    if (bequiet)		/* and bequiet overrides everything */
	print = 0;
    if (print)
	FUNC6(dflag);
    FUNC2();			/* PWP: run the defined cwd command */
}