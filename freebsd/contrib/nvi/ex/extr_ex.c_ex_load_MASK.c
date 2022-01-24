#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ clen; scalar_t__ start; scalar_t__ stop; scalar_t__ range_lno; scalar_t__ cp; scalar_t__ o_cp; scalar_t__ o_clen; int /*<<< orphan*/  agv_flags; int /*<<< orphan*/  rq; struct TYPE_16__* if_name; } ;
struct TYPE_17__ {int /*<<< orphan*/  ecq; TYPE_2__ excmd; } ;
struct TYPE_15__ {scalar_t__ lno; TYPE_3__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ RANGE ;
typedef  TYPE_3__ GS ;
typedef  TYPE_2__ EXCMD ;

/* Variables and functions */
 int AGV_ALL ; 
 int AGV_GLOBAL ; 
 int AGV_V ; 
 int /*<<< orphan*/  E_NAMEDISCARD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ OOBLNO ; 
 int /*<<< orphan*/  SC_EX_GLOBAL ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  q ; 

__attribute__((used)) static int
FUNC12(SCR *sp)
{
	GS *gp;
	EXCMD *ecp;
	RANGE *rp;

	FUNC1(sp, SC_EX_GLOBAL);

	/*
	 * Lose any exhausted commands.  We know that the first command
	 * can't be an AGV command, which makes things a bit easier.
	 */
	for (gp = sp->gp;;) {
		ecp = FUNC5(gp->ecq);

		/* Discard the allocated source name as requested. */
		if (FUNC2(ecp, E_NAMEDISCARD))
			FUNC11(ecp->if_name);

		/*
		 * If we're back to the original structure, leave it around,
		 * since we've returned to the beginning of the command stack.
		 */
		if (ecp == &gp->excmd) {
			ecp->if_name = NULL;
			return (0);
		}

		/*
		 * ecp->clen will be 0 for the first discarded command, but
		 * may not be 0 for subsequent ones, e.g. if the original
		 * command was ":g/xx/@a|s/b/c/", then when we discard the
		 * command pushed on the stack by the @a, we have to resume
		 * the global command which included the substitute command.
		 */
		if (ecp->clen != 0)
			return (0);

		/*
		 * If it's an @, global or v command, we may need to continue
		 * the command on a different line.
		 */
		if (FUNC0(ecp->agv_flags, AGV_ALL)) {
			/* Discard any exhausted ranges. */
			while ((rp = FUNC7(ecp->rq)) != NULL)
				if (rp->start > rp->stop) {
					FUNC8(ecp->rq, rp, q);
					FUNC11(rp);
				} else
					break;

			/* If there's another range, continue with it. */
			if (rp != NULL)
				break;

			/* If it's a global/v command, fix up the last line. */
			if (FUNC0(ecp->agv_flags,
			    AGV_GLOBAL | AGV_V) && ecp->range_lno != OOBLNO)
				if (FUNC9(sp, ecp->range_lno))
					sp->lno = ecp->range_lno;
				else {
					if (FUNC10(sp, &sp->lno))
						return (1);
					if (sp->lno == 0)
						sp->lno = 1;
				}
			FUNC11(ecp->o_cp);
		}

		/* Discard the EXCMD. */
		FUNC6(gp->ecq, q);
		FUNC11(ecp);
	}

	/*
	 * We only get here if it's an active @, global or v command.  Set
	 * the current line number, and get a new copy of the command for
	 * the parser.  Note, the original pointer almost certainly moved,
	 * so we have play games.
	 */
	ecp->cp = ecp->o_cp;
	FUNC4(ecp->cp, ecp->cp + ecp->o_clen, ecp->o_clen);
	ecp->clen = ecp->o_clen;
	ecp->range_lno = sp->lno = rp->start++;

	if (FUNC0(ecp->agv_flags, AGV_GLOBAL | AGV_V))
		FUNC3(sp, SC_EX_GLOBAL);
	return (0);
}