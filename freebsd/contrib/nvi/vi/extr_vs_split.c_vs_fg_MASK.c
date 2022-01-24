#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  hq; int /*<<< orphan*/  dq; } ;
struct TYPE_15__ {TYPE_2__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ GS ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  q ; 
 TYPE_1__* FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__**,char*) ; 

int
FUNC8(SCR *sp, SCR **nspp, CHAR_T *name, int newscreen)
{
	GS *gp;
	SCR *nsp;
	char *np;
	size_t nlen;

	gp = sp->gp;

	if (name)
	    FUNC0(sp, name, FUNC1(name) + 1, np, nlen);
	else
	    np = NULL;
	if (newscreen)
		/* Get the specified background screen. */
		nsp = FUNC5(sp, np);
	else
		/* Swap screens. */
		if (FUNC7(sp, &nsp, np))
			return (1);

	if ((*nspp = nsp) == NULL) {
		FUNC4(sp, M_ERR, name,
		    name == NULL ?
		    "223|There are no background screens" :
		    "224|There's no background screen editing a file named %s");
		return (1);
	}

	if (newscreen) {
		/* Remove the new screen from the background queue. */
		FUNC3(gp->hq, nsp, q);

		/* Split the screen; if we fail, hook the screen back in. */
		if (FUNC6(sp, nsp, 0)) {
			FUNC2(gp->hq, nsp, q);
			return (1);
		}
	} else {
		/* Move the old screen to the background queue. */
		FUNC3(gp->dq, sp, q);
		FUNC2(gp->hq, sp, q);
	}
	return (0);
}