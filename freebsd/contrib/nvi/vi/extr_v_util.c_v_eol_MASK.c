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
struct TYPE_3__ {size_t cno; int /*<<< orphan*/  lno; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ MARK ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FATAL ; 
 int /*<<< orphan*/  M_BERR ; 
 int /*<<< orphan*/  VIM_EOL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(SCR *sp, MARK *mp)
{
	size_t len;

	if (mp == NULL)
		FUNC2(sp, NULL, VIM_EOL);
	else {
		if (FUNC0(sp, mp->lno, DBG_FATAL, NULL, &len))
			return;
		if (mp->cno == len - 1)
			FUNC2(sp, NULL, VIM_EOL);
		else
			FUNC1(sp, M_BERR, "196|Movement past the end-of-line");
	}
}