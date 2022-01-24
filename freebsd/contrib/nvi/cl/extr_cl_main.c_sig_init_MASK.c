#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * oact; } ;
struct TYPE_6__ {int /*<<< orphan*/  progname; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ GS ;
typedef  TYPE_2__ CL_PRIVATE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 size_t INDX_HUP ; 
 size_t INDX_INT ; 
 size_t INDX_TERM ; 
 size_t INDX_WINCH ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  __sigblockset ; 
 int /*<<< orphan*/  h_hup ; 
 int /*<<< orphan*/  h_int ; 
 int /*<<< orphan*/  h_term ; 
 int /*<<< orphan*/  h_winch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(GS *gp, SCR *sp)
{
	CL_PRIVATE *clp;

	clp = FUNC0(gp);

	if (sp == NULL) {
		(void)FUNC5(&__sigblockset);
		if (FUNC4(&__sigblockset, SIGHUP) ||
		    FUNC3(SIGHUP, &clp->oact[INDX_HUP], h_hup) ||
		    FUNC4(&__sigblockset, SIGINT) ||
		    FUNC3(SIGINT, &clp->oact[INDX_INT], h_int) ||
		    FUNC4(&__sigblockset, SIGTERM) ||
		    FUNC3(SIGTERM, &clp->oact[INDX_TERM], h_term)
#ifdef SIGWINCH
		    ||
		    sigaddset(&__sigblockset, SIGWINCH) ||
		    setsig(SIGWINCH, &clp->oact[INDX_WINCH], h_winch)
#endif
		    ) {
			FUNC2(gp->progname, NULL);
			return (1);
		}
	} else
		if (FUNC3(SIGHUP, NULL, h_hup) ||
		    FUNC3(SIGINT, NULL, h_int) ||
		    FUNC3(SIGTERM, NULL, h_term)
#ifdef SIGWINCH
		    ||
		    setsig(SIGWINCH, NULL, h_winch)
#endif
		    ) {
			FUNC1(sp, M_SYSERR, "signal-reset");
		}
	return (0);
}