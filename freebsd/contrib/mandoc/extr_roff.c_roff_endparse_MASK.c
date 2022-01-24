#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct roff {int /*<<< orphan*/ * tbl; TYPE_3__* eqn; TYPE_2__* last; } ;
struct TYPE_6__ {TYPE_1__* node; } ;
struct TYPE_5__ {size_t tok; int /*<<< orphan*/  col; int /*<<< orphan*/  line; } ;
struct TYPE_4__ {int /*<<< orphan*/  pos; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_BLK_NOEND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * roff_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void
FUNC3(struct roff *r)
{
	if (r->last != NULL)
		FUNC1(MANDOCERR_BLK_NOEND, r->last->line,
		    r->last->col, "%s", roff_name[r->last->tok]);

	if (r->eqn != NULL) {
		FUNC1(MANDOCERR_BLK_NOEND,
		    r->eqn->node->line, r->eqn->node->pos, "EQ");
		FUNC0(r->eqn);
		r->eqn = NULL;
	}

	if (r->tbl != NULL) {
		FUNC2(r->tbl, 1);
		r->tbl = NULL;
	}
}