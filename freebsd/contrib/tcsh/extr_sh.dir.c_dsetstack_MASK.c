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
struct varent {scalar_t__** vec; } ;
struct directory {struct directory* di_prev; struct directory* di_next; scalar_t__ di_count; int /*<<< orphan*/  di_name; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 int /*<<< orphan*/  STRdirstack ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 struct varent* FUNC1 (int /*<<< orphan*/ ) ; 
 struct directory* dcwd ; 
 int /*<<< orphan*/  FUNC2 (struct directory*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct directory dhead ; 
 struct directory* FUNC4 (int,int) ; 

void
FUNC5(void)
{
    Char **cp;
    struct varent *vp;
    struct directory *dn, *dp;

    if ((vp = FUNC1(STRdirstack)) == NULL || vp->vec == NULL)
	return;

    /* Free the whole stack */
    while ((dn = dhead.di_prev) != &dhead) {
	dn->di_next->di_prev = dn->di_prev;
	dn->di_prev->di_next = dn->di_next;
	if (dn != dcwd)
	    FUNC2(dn);
    }

    /* thread the current working directory */
    dhead.di_prev = dhead.di_next = dcwd;
    dcwd->di_next = dcwd->di_prev = &dhead;

    /* put back the stack */
    for (cp = vp->vec; cp && *cp && **cp; cp++) {
	dp = FUNC4(sizeof(struct directory), 1);
	dp->di_name = FUNC0(*cp);
	dp->di_count = 0;
	dp->di_prev = dcwd;
	dp->di_next = dcwd->di_next;
	dcwd->di_next = dp;
	dp->di_next->di_prev = dp;
    }
    FUNC3();	/* Make $dirstack reflect the current state */
}