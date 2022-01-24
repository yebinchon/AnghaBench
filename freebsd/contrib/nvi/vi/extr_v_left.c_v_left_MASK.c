#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int recno_t ;
struct TYPE_7__ {int cno; } ;
struct TYPE_8__ {int cno; } ;
struct TYPE_9__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_2__ m_start; } ;
typedef  TYPE_3__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(SCR *sp, VICMD *vp)
{
	recno_t cnt;

	/*
	 * !!!
	 * The ^H and h commands always failed in the first column.
	 */
	if (vp->m_start.cno == 0) {
		FUNC2(sp);
		return (1);
	}

	/* Find the end of the range. */
	cnt = FUNC0(vp, VC_C1SET) ? vp->count : 1;
	if (vp->m_start.cno > cnt)
		vp->m_stop.cno = vp->m_start.cno - cnt;
	else
		vp->m_stop.cno = 0;

	/*
	 * All commands move to the end of the range.  Motion commands
	 * adjust the starting point to the character before the current
	 * one.
	 */
	if (FUNC1(vp))
		--vp->m_start.cno;
	vp->m_final = vp->m_stop;
	return (0);
}