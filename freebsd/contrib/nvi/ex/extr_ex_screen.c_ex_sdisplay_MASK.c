#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  hq; } ;
struct TYPE_12__ {int cols; TYPE_1__* frp; TYPE_3__* gp; } ;
struct TYPE_11__ {char* name; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ GS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  M_INFO ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  q ; 
 int FUNC5 (char*) ; 

int
FUNC6(SCR *sp)
{
	GS *gp;
	SCR *tsp;
	int cnt, col, len, sep;

	gp = sp->gp;
	if ((tsp = FUNC1(gp->hq)) == NULL) {
		FUNC4(sp, M_INFO, "149|No background screens to display");
		return (0);
	}

	col = len = sep = 0;
	for (cnt = 1; tsp != NULL && !FUNC0(sp);
	    tsp = FUNC2(tsp, q)) {
		col += len = FUNC5(tsp->frp->name) + sep;
		if (col >= sp->cols - 1) {
			col = len;
			sep = 0;
			(void)FUNC3(sp, "\n");
		} else if (cnt != 1) {
			sep = 1;
			(void)FUNC3(sp, " ");
		}
		(void)FUNC3(sp, tsp->frp->name);
		++cnt;
	}
	if (!FUNC0(sp))
		(void)FUNC3(sp, "\n");
	return (0);
}