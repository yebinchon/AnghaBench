#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__** argv; scalar_t__ argc; } ;
struct TYPE_11__ {struct TYPE_11__* nextdisp; } ;
struct TYPE_10__ {int /*<<< orphan*/ * bp; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  E_NEWSCREEN ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_SSWITCH ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_2__**,int /*<<< orphan*/ *,int) ; 

int
FUNC3(SCR *sp, EXCMD *cmdp)
{
	SCR *nsp;
	int newscreen;

	newscreen = FUNC0(cmdp, E_NEWSCREEN);
	if (FUNC2(sp, &nsp, cmdp->argc ? cmdp->argv[0]->bp : NULL, newscreen))
		return (1);

	/* Set up the switch. */
	if (newscreen) {
		sp->nextdisp = nsp;
		FUNC1(sp, SC_SSWITCH);
	}
	return (0);
}