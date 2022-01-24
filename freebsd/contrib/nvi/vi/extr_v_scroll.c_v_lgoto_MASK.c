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
typedef  scalar_t__ recno_t ;
struct TYPE_6__ {int lno; } ;
struct TYPE_7__ {int count; TYPE_1__ m_stop; int /*<<< orphan*/  m_start; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	recno_t nlines;

	if (FUNC0(vp, VC_C1SET)) {
		if (!FUNC1(sp, vp->count)) {
			/*
			 * !!!
			 * Historically, 1G was legal in an empty file.
			 */
			if (vp->count == 1) {
				if (FUNC2(sp, &nlines))
					return (1);
				if (nlines == 0)
					return (0);
			}
			FUNC4(sp, &vp->m_start);
			return (1);
		}
		vp->m_stop.lno = vp->count;
	} else {
		if (FUNC2(sp, &nlines))
			return (1);
		vp->m_stop.lno = nlines ? nlines : 1;
	}
	FUNC3(vp);
	return (0);
}