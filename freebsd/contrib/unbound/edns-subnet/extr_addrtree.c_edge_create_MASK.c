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
struct addrnode {struct addredge** edge; struct addredge* parent_edge; } ;
struct addredge {int len; int parent_index; int /*<<< orphan*/ * str; struct addrnode* parent_node; struct addrnode* node; } ;
typedef  int addrlen_t ;
typedef  int /*<<< orphan*/  addrkey_t ;

/* Variables and functions */
 int KEYWIDTH ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct addredge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static struct addredge * 
FUNC5(struct addrnode *node, const addrkey_t *addr, 
	addrlen_t addrlen, struct addrnode *parent_node, int parent_index)
{
	size_t n;
	struct addredge *edge = (struct addredge *)FUNC3( sizeof (*edge) );
	if (!edge)
		return NULL;
	edge->node = node;
	edge->len = addrlen;
	edge->parent_index = parent_index;
	edge->parent_node = parent_node;
	/* ceil() */
	n = (size_t)((addrlen / KEYWIDTH) + ((addrlen % KEYWIDTH != 0)?1:0));
	edge->str = (addrkey_t *)FUNC0(n, sizeof (addrkey_t));
	if (!edge->str) {
		FUNC1(edge);
		return NULL;
	}
	FUNC4(edge->str, addr, n * sizeof (addrkey_t));
	/* Only manipulate other objects after successful alloc */
	node->parent_edge = edge;
	FUNC2(parent_node->edge[parent_index] == NULL);
	parent_node->edge[parent_index] = edge;
	return edge;
}