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
typedef  scalar_t__ recno_t ;
struct TYPE_3__ {scalar_t__ lno; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ MARK ;

/* Variables and functions */
 int /*<<< orphan*/  M_BERR ; 
 int /*<<< orphan*/  VIM_EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(SCR *sp, MARK *mp)
{
	recno_t lno;

	if (mp == NULL)
		FUNC2(sp, NULL, VIM_EOF);
	else {
		if (FUNC0(sp, &lno))
			return;
		if (mp->lno >= lno)
			FUNC2(sp, NULL, VIM_EOF);
		else
			FUNC1(sp, M_BERR, "195|Movement past the end-of-file");
	}
}