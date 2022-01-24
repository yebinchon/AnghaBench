#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct roff_node {int flags; scalar_t__ type; size_t tok; int /*<<< orphan*/  pos; int /*<<< orphan*/  line; struct roff_node* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  first; } ;
struct roff_man {TYPE_1__ meta; struct roff_node* last; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_BLK_NOEND ; 
 int MDOC_EXPLICIT ; 
 int NODE_VALID ; 
 scalar_t__ ROFFT_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct roff_man*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * roff_name ; 

void
FUNC3(struct roff_man *mdoc)
{
	struct roff_node *n;

	/* Scan for open explicit scopes. */

	n = mdoc->last->flags & NODE_VALID ?
	    mdoc->last->parent : mdoc->last;

	for ( ; n; n = n->parent)
		if (n->type == ROFFT_BLOCK &&
		    FUNC1(n->tok)->flags & MDOC_EXPLICIT)
			FUNC0(MANDOCERR_BLK_NOEND,
			    n->line, n->pos, "%s", roff_name[n->tok]);

	/* Rewind to the first. */

	FUNC2(mdoc, mdoc->meta.first);
}