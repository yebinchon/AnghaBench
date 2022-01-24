#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VICMD ;
struct TYPE_11__ {int /*<<< orphan*/  (* scr_attr ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* scr_screen ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {struct TYPE_10__* frp; int /*<<< orphan*/  cno; int /*<<< orphan*/  lno; TYPE_2__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ GS ;

/* Variables and functions */
 int /*<<< orphan*/  FR_CURSORSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  SA_ALTERNATE ; 
 int /*<<< orphan*/  SC_EX ; 
 int SC_SCR_VI ; 
 int SC_VI ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(SCR *sp, VICMD *vp)
{
	GS *gp;

	gp = sp->gp;

	/* Try and switch screens -- the screen may not permit it. */
	if (gp->scr_screen(sp, SC_EX)) {
		FUNC3(sp, M_ERR,
		    "207|The Q command requires the ex terminal interface");
		return (1);
	}
	(void)gp->scr_attr(sp, SA_ALTERNATE, 0);

	/* Save the current cursor position. */
	sp->frp->lno = sp->lno;
	sp->frp->cno = sp->cno;
	FUNC1(sp->frp, FR_CURSORSET);

	/* Switch to ex mode. */
	FUNC0(sp, SC_VI | SC_SCR_VI);
	FUNC1(sp, SC_EX);

	/* Move out of the vi screen. */
	(void)FUNC2(sp, "\n");

	return (0);
}