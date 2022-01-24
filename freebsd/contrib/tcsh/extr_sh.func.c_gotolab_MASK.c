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
struct TYPE_3__ {scalar_t__ type; scalar_t__ f_seek; } ;
struct whyle {TYPE_1__ w_end; struct whyle* w_next; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 scalar_t__ TCSH_F_SEEK ; 
 int /*<<< orphan*/  TC_BREAK ; 
 int /*<<< orphan*/  TC_GOTO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct whyle* whyles ; 
 int /*<<< orphan*/  zlast ; 

void
FUNC4(Char *lab)
{
    struct whyle *wp;
    /*
     * While we still can, locate any unknown ends of existing loops. This
     * obscure code is the WORST result of the fact that we don't really parse.
     */
    zlast = TC_GOTO;
    for (wp = whyles; wp; wp = wp->w_next)
	if (wp->w_end.type == TCSH_F_SEEK && wp->w_end.f_seek == 0) {
	    FUNC2(TC_BREAK, 0, NULL);
	    FUNC1(&wp->w_end);
	}
	else {
	    FUNC0(&wp->w_end);
	}
    FUNC2(TC_GOTO, 0, lab);
    /*
     * Eliminate loops which were exited.
     */
    FUNC3();
}