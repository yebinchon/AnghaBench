#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct command {int /*<<< orphan*/  t_dcom; } ;
struct biltins {int minargs; int maxargs; int /*<<< orphan*/  (* bfunct ) (int /*<<< orphan*/ ,struct command*) ;int /*<<< orphan*/  bname; } ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_TOOFEW ; 
 int ERR_TOOMANY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct command*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct command *t, const struct biltins *bp)
{
    int     i;

    FUNC4(t->t_dcom);
    FUNC1(bp->bname);
    i = FUNC0(t->t_dcom) - 1;
    if (i < bp->minargs)
	FUNC2(ERR_NAME | ERR_TOOFEW);
    if (i > bp->maxargs)
	FUNC2(ERR_NAME | ERR_TOOMANY);
    (*bp->bfunct) (t->t_dcom, t);
}