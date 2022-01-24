#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * oact; } ;
typedef  int /*<<< orphan*/  GS ;
typedef  TYPE_1__ CL_PRIVATE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 size_t INDX_HUP ; 
 size_t INDX_INT ; 
 size_t INDX_TERM ; 
 size_t INDX_WINCH ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(GS *gp)
{
	CL_PRIVATE *clp;

	clp = FUNC0(gp);
	(void)FUNC1(SIGHUP, NULL, &clp->oact[INDX_HUP]);
	(void)FUNC1(SIGINT, NULL, &clp->oact[INDX_INT]);
	(void)FUNC1(SIGTERM, NULL, &clp->oact[INDX_TERM]);
#ifdef SIGWINCH
	(void)sigaction(SIGWINCH, NULL, &clp->oact[INDX_WINCH]);
#endif
}