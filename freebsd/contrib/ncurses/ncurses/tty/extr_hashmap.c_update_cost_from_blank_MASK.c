#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  _nc_bkgd; } ;
typedef  int /*<<< orphan*/  SCREEN ;
typedef  int /*<<< orphan*/  NCURSES_CH_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ back_color_erase ; 
 int /*<<< orphan*/  blankchar ; 
 TYPE_1__* stdscr ; 

__attribute__((used)) static int
FUNC4(SCREEN *sp, NCURSES_CH_T * to)
{
    int cost = 0;
    int i;
    NCURSES_CH_T blank = blankchar;

    if (back_color_erase)
	FUNC2(blank, FUNC1(stdscr->_nc_bkgd));

    for (i = FUNC3(sp); i > 0; i--, to++)
	if (!(FUNC0(blank, *to)))
	    cost++;

    return cost;
}