#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int recno_t ;
struct TYPE_9__ {int count; int /*<<< orphan*/  m_stop; int /*<<< orphan*/  m_final; } ;
typedef  TYPE_1__ VICMD ;
struct TYPE_10__ {int /*<<< orphan*/  t_maxrows; } ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  CNTRL_F ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_WINDOW ; 
 int /*<<< orphan*/  VC_C1SET ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	recno_t offset;

	/*
	 * !!!
	 * The calculation in IEEE Std 1003.2-1992 (POSIX) is:
	 *
	 *	top_line = top_line + count * (window - 2);
	 *
	 * which was historically wrong.  The correct one is:
	 *
	 *	top_line = top_line + count * window - 2;
	 *
	 * i.e. the two line "overlap" was only subtracted once.  Which
	 * makes no sense, but then again, an overlap makes no sense for
	 * any screen but the "next" one anyway.  We do it the historical
	 * way as there's no good reason to change it.
	 *
	 * If the screen has been split horizontally, use the smaller of
	 * the current window size and the window option value.
	 *
	 * It possible for this calculation to be less than 1; move at
	 * least one line.
	 */
	offset = (FUNC0(vp, VC_C1SET) ? vp->count : 1) * (FUNC1(sp) ?
	    FUNC2(sp->t_maxrows, FUNC3(sp, O_WINDOW)) : FUNC3(sp, O_WINDOW));
	offset = offset <= 2 ? 1 : offset - 2;
	if (FUNC4(sp, &vp->m_stop, offset, CNTRL_F))
		return (1);
	vp->m_final = vp->m_stop;
	return (0);
}