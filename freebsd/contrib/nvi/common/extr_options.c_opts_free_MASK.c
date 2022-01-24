#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {int /*<<< orphan*/ * opts; } ;
typedef  TYPE_1__ SCR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_GLOBAL ; 
 scalar_t__ OPT_STR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int O_OPTIONCOUNT ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* optlist ; 

void
FUNC4(SCR *sp)
{
	int cnt;

	for (cnt = 0; cnt < O_OPTIONCOUNT; ++cnt) {
		if (optlist[cnt].type != OPT_STR ||
		    FUNC0(&sp->opts[cnt], OPT_GLOBAL))
			continue;
		if (FUNC2(sp, cnt) != NULL)
			FUNC3(FUNC2(sp, cnt));
		if (FUNC1(sp, cnt) != NULL)
			FUNC3(FUNC1(sp, cnt));
	}
}