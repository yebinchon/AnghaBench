#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lno; } ;
struct TYPE_6__ {TYPE_1__ m_start; } ;
typedef  TYPE_2__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_COMEDIT ; 
 int /*<<< orphan*/  SC_SCRIPT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(SCR *sp, VICMD *vp)
{
	/* If it's a colon command-line edit window, it's an ex command. */
	if (FUNC0(sp, SC_COMEDIT))
		return (FUNC3(sp));

	/* If it's a script window, exec the line. */
	if (FUNC0(sp, SC_SCRIPT))
		return (FUNC1(sp, vp->m_start.lno));

	/* Otherwise, it's the same as v_down(). */
	return (FUNC2(sp, vp));
}