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
typedef  scalar_t__ time_t ;
struct addrtree {struct addrnode* root; } ;
struct addrnode {scalar_t__ ttl; scalar_t__ scope; struct addredge** edge; scalar_t__ elem; } ;
struct addredge {scalar_t__ len; struct addrnode* node; int /*<<< orphan*/  str; } ;
typedef  scalar_t__ addrlen_t ;
typedef  int /*<<< orphan*/  addrkey_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrtree*,struct addrnode*) ; 

struct addrnode *
FUNC4(struct addrtree *tree, const addrkey_t *addr, 
	addrlen_t sourcemask, time_t now)
{
	struct addrnode *node = tree->root;
	struct addredge *edge = NULL;
	addrlen_t depth = 0;

	FUNC2(node != NULL);
	while (1) {
		/* Current node more specific then question. */
		FUNC2(depth <= sourcemask);
		/* does this node have data? if yes, see if we have a match */
		if (node->elem && node->ttl >= now) {
			/* saved at wrong depth */;
			FUNC2(node->scope >= depth);
			if (depth == node->scope ||
				(node->scope > sourcemask &&
				 depth == sourcemask)) {
				/* Authority indicates it does not have a more
				 * precise answer or we cannot ask a more
				 * specific question. */
				FUNC3(tree, node);
				return node;
			}
		}
		/* This is our final depth, but we haven't found an answer. */
		if (depth == sourcemask)
			return NULL;
		/* Find an edge to traverse */
		edge = node->edge[FUNC0(addr, sourcemask, depth)];
		if (!edge || !edge->node)
			return NULL;
		if (edge->len > sourcemask )
			return NULL;
		if (!FUNC1(edge->str, edge->len, addr, sourcemask, depth))
			return NULL;
		FUNC2(depth < edge->len);
		depth = edge->len;
		node = edge->node;
	}
}