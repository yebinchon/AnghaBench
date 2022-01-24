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
struct roff_node {int flags; scalar_t__ type; size_t tok; struct roff_node* parent; } ;
struct roff_man {struct roff_node* last; } ;
typedef  enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_BLK_NEST ; 
 int MDOC_EXPLICIT ; 
 int NODE_ENDED ; 
 int NODE_VALID ; 
 scalar_t__ ROFFT_BLOCK ; 
 scalar_t__ ROFFT_HEAD ; 
 int /*<<< orphan*/  FUNC0 (struct roff_node*,struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct roff_man*,int,int,int,struct roff_node*) ; 
 TYPE_1__* FUNC3 (size_t) ; 
 int /*<<< orphan*/ * roff_name ; 

__attribute__((used)) static int
FUNC4(struct roff_man *mdoc, enum roff_tok tok, int line, int ppos,
	struct roff_node *target)
{
	struct roff_node	*n;
	int			 irc;

	if (target->flags & NODE_VALID)
		return 0;

	irc = 0;
	for (n = mdoc->last; n != NULL && n != target; n = n->parent) {
		if (n->flags & NODE_ENDED)
			continue;
		if (n->type == ROFFT_BLOCK &&
		    FUNC3(n->tok)->flags & MDOC_EXPLICIT) {
			irc = 1;
			FUNC0(mdoc->last, target);
			if (target->type == ROFFT_HEAD)
				target->flags |= NODE_ENDED;
			else if ( ! (target->flags & NODE_ENDED)) {
				FUNC1(MANDOCERR_BLK_NEST,
				    line, ppos, "%s breaks %s",
				    roff_name[tok], roff_name[n->tok]);
				FUNC2(mdoc, line, ppos,
				    tok, target);
			}
		}
	}
	return irc;
}