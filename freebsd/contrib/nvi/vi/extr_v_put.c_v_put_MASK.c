#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_5__ {int count; int /*<<< orphan*/  m_final; int /*<<< orphan*/  m_start; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_BUFFER ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VC_ISDOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC4(SCR *sp, VICMD *vp)
{
	u_long cnt;

	if (FUNC0(vp, VC_ISDOT))
		FUNC2(sp, vp);

	/*
	 * !!!
	 * Historic vi did not support a count with the 'p' and 'P'
	 * commands.  It's useful, so we do.
	 */
	for (cnt = FUNC0(vp, VC_C1SET) ? vp->count : 1; cnt--;) {
		if (FUNC3(sp, NULL,
		    FUNC0(vp, VC_BUFFER) ? &vp->buffer : NULL,
		    &vp->m_start, &vp->m_final, 1))
			return (1);
		vp->m_start = vp->m_final;
		if (FUNC1(sp))
			return (1);
	}
	return (0);
}