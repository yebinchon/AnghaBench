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
struct TYPE_3__ {int lno; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ MARK ;

/* Variables and functions */
 int /*<<< orphan*/  M_BERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void
FUNC1(SCR *sp, MARK *mp)
{
	if (mp == NULL || mp->lno == 1)
		FUNC0(sp, M_BERR, "198|Already at the beginning of the file");
	else
		FUNC0(sp, M_BERR, "199|Movement past the beginning of the file");
}