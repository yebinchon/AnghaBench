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
struct TYPE_5__ {scalar_t__ count; int /*<<< orphan*/  m_stop; } ;
typedef  TYPE_1__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_BOTTOM ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC3(SCR *sp, VICMD *vp)
{
	if (FUNC2(sp, &vp->m_stop,
	    FUNC0(vp, VC_C1SET) ? vp->count - 1 : 0, P_BOTTOM))
		return (1);
	FUNC1(vp);
	return (0);
}