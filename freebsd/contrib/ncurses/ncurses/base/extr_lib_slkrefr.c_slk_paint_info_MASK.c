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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_7__ {int slk_format; TYPE_2__* _slk; } ;
struct TYPE_6__ {int maxlab; TYPE_1__* ent; } ;
struct TYPE_5__ {int /*<<< orphan*/  ent_x; } ;
typedef  TYPE_3__ SCREEN ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(WINDOW *win)
{
    SCREEN *sp = FUNC0(win);

    if (win && sp && (sp->slk_format == 4)) {
	int i;

	(void) FUNC2(win, 0, 0, 0, FUNC1(win));
	FUNC4(win, 0, 0);

	for (i = 0; i < sp->_slk->maxlab; i++) {
	    FUNC3(win, 0, sp->_slk->ent[i].ent_x, "F%d", i + 1);
	}
    }
}