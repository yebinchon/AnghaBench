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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_5__ {int /*<<< orphan*/  subre_c; int /*<<< orphan*/  re_c; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_RE_SEARCH ; 
 int /*<<< orphan*/  SC_RE_SUBST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(
	SCR *sp,
	OPTION *op,
	char *str,
	u_long *valp)
{
	if (FUNC1(sp, SC_RE_SEARCH)) {
		FUNC2(&sp->re_c);
		FUNC0(sp, SC_RE_SEARCH);
	}
	if (FUNC1(sp, SC_RE_SUBST)) {
		FUNC2(&sp->subre_c);
		FUNC0(sp, SC_RE_SUBST);
	}
	return (0);
}