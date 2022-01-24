#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ clen; struct TYPE_12__* if_name; struct TYPE_12__* o_cp; int /*<<< orphan*/  rq; int /*<<< orphan*/  agv_flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  ecq; TYPE_2__ excmd; } ;
struct TYPE_11__ {TYPE_3__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ RANGE ;
typedef  TYPE_3__ GS ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  AGV_ALL ; 
 int /*<<< orphan*/  E_NAMEDISCARD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  q ; 

__attribute__((used)) static int
FUNC7(SCR *sp)
{
	GS *gp;
	EXCMD *ecp;
	RANGE *rp;

	/*
	 * We know the first command can't be an AGV command, so we don't
	 * process it specially.  We do, however, nail the command itself.
	 */
	for (gp = sp->gp;;) {
		ecp = FUNC2(gp->ecq);
		if (FUNC1(ecp, E_NAMEDISCARD))
			FUNC6(ecp->if_name);
		/* Reset the last command without dropping it. */
		if (ecp == &gp->excmd)
			break;
		if (FUNC0(ecp->agv_flags, AGV_ALL)) {
			while ((rp = FUNC4(ecp->rq)) != NULL) {
				FUNC5(ecp->rq, rp, q);
				FUNC6(rp);
			}
			FUNC6(ecp->o_cp);
		}
		FUNC3(gp->ecq, q);
		FUNC6(ecp);
	}

	ecp->if_name = NULL;
	ecp->clen = 0;
	return (0);
}