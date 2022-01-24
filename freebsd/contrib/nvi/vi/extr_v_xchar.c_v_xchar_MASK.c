#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t cno; } ;
struct TYPE_11__ {int cno; int /*<<< orphan*/  lno; } ;
struct TYPE_9__ {int cno; } ;
struct TYPE_10__ {int count; TYPE_5__ m_stop; TYPE_4__ m_start; int /*<<< orphan*/  buffer; TYPE_1__ m_final; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_BERR ; 
 int /*<<< orphan*/  VC_BUFFER ; 
 int /*<<< orphan*/  VC_C1SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	size_t len;
	int isempty;

	if (FUNC2(sp, vp->m_start.lno, NULL, &len, &isempty)) {
		if (isempty)
			goto nodel;
		return (1);
	}
	if (len == 0) {
nodel:		FUNC4(sp, M_BERR, "206|No characters to delete");
		return (1);
	}

	/*
	 * Delete from the cursor toward the end of line, w/o moving the
	 * cursor.
	 *
	 * !!!
	 * Note, "2x" at EOL isn't the same as "xx" because the left movement
	 * of the cursor as part of the 'x' command isn't taken into account.
	 * Historically correct.
	 */
	if (FUNC0(vp, VC_C1SET))
		vp->m_stop.cno += vp->count - 1;
	if (vp->m_stop.cno >= len - 1) {
		vp->m_stop.cno = len - 1;
		vp->m_final.cno = vp->m_start.cno ? vp->m_start.cno - 1 : 0;
	} else
		vp->m_final.cno = vp->m_start.cno;

	if (FUNC1(sp,
	    FUNC0(vp, VC_BUFFER) ? &vp->buffer : NULL,
	    &vp->m_start, &vp->m_stop, 0))
		return (1);
	return (FUNC3(sp, &vp->m_start, &vp->m_stop, 0));
}