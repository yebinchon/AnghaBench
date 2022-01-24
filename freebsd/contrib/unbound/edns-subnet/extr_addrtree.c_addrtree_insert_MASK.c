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
struct addrtree {scalar_t__ max_depth; int /*<<< orphan*/  size_bytes; int /*<<< orphan*/  node_count; scalar_t__ (* sizefunc ) (void*) ;struct addrnode* root; } ;
struct addrnode {scalar_t__ ttl; scalar_t__ scope; void* elem; struct addredge** edge; } ;
struct addredge {scalar_t__ len; int parent_index; struct addrnode* parent_node; int /*<<< orphan*/  const* str; struct addrnode* node; } ;
typedef  scalar_t__ addrlen_t ;
typedef  int /*<<< orphan*/  addrkey_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct addrtree*,struct addrnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrnode*,int /*<<< orphan*/  const*,scalar_t__,struct addrnode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrnode*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct addrtree*) ; 
 int /*<<< orphan*/  FUNC7 (struct addrtree*,struct addrnode*) ; 
 struct addrnode* FUNC8 (struct addrtree*,void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct addrtree*,struct addrnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct addrtree*,struct addrnode*) ; 
 scalar_t__ FUNC11 (void*) ; 

void
FUNC12(struct addrtree *tree, const addrkey_t *addr, 
	addrlen_t sourcemask, addrlen_t scope, void *elem, time_t ttl, 
	time_t now)
{
	struct addrnode *newnode, *node;
	struct addredge *edge;
	int index;
	addrlen_t common, depth;

	node = tree->root;
	FUNC5(node != NULL);

	/* Protect our cache against too much fine-grained data */
	if (tree->max_depth < scope) scope = tree->max_depth;
	/* Server answer was less specific than question */
	if (scope < sourcemask) sourcemask = scope;

	depth = 0;
	while (1) {
		FUNC5(depth <= sourcemask);
		/* Case 1: update existing node */
		if (depth == sourcemask) {
			/* update this node's scope and data */
			FUNC1(tree, node);
			node->ttl = ttl;
			node->elem = elem;
			node->scope = scope;
			tree->size_bytes += tree->sizefunc(elem);
			return;
		}
		index = FUNC4(addr, sourcemask, depth);
		/* Get an edge to an unexpired node */
		edge = node->edge[index];
		while (edge) {
			/* Purge all expired nodes on path */
			if (!edge->node->elem || edge->node->ttl >= now)
				break;
			FUNC10(tree, edge->node);
			edge = node->edge[index];
		}
		/* Case 2: New leafnode */
		if (!edge) {
			newnode = FUNC8(tree, elem, scope, ttl);
			if (!newnode) return;
			if (!FUNC2(newnode, addr, sourcemask, node,
				index)) {
				FUNC1(tree, newnode);
				tree->node_count--;
				FUNC3(newnode);
				return;
			}
			tree->size_bytes += FUNC9(tree, newnode);
			FUNC7(tree, newnode);
			FUNC6(tree);
			return;
		}
		/* Case 3: Traverse edge */
		common = FUNC0(edge->str, edge->len, addr, sourcemask,
			depth);
		if (common == edge->len) {
			/* We update the scope of intermediate nodes. Apparently
			 * the * authority changed its mind. If we would not do
			 * this we might not be able to reach our new node. */
			node->scope = scope;
			depth = edge->len;
			node = edge->node;
			continue;
		}
		/* Case 4: split. */
		if (!(newnode = FUNC8(tree, NULL, 0, 0)))
			return;
		node->edge[index] = NULL;
		if (!FUNC2(newnode, addr, common, node, index)) {
			node->edge[index] = edge;
			FUNC1(tree, newnode);
			tree->node_count--;
			FUNC3(newnode);
			return;
		}
		FUNC7(tree, newnode);
		/* connect existing child to our new node */
		index = FUNC4(edge->str, edge->len, common);
		newnode->edge[index] = edge;
		edge->parent_node = newnode;
		edge->parent_index = (int)index;
		
		if (common == sourcemask) {
			/* Data is stored in the node */
			newnode->elem = elem;
			newnode->scope = scope;
			newnode->ttl = ttl;
		} 
		
		tree->size_bytes += FUNC9(tree, newnode);

		if (common != sourcemask) {
			/* Data is stored in other leafnode */
			node = newnode;
			newnode = FUNC8(tree, elem, scope, ttl);
			if (!FUNC2(newnode, addr, sourcemask, node,
				index^1)) {
				FUNC1(tree, newnode);
				tree->node_count--;
				FUNC3(newnode);
				return;
			}
			tree->size_bytes += FUNC9(tree, newnode);
			FUNC7(tree, newnode);
		}
		FUNC6(tree);
		return;
	}
}