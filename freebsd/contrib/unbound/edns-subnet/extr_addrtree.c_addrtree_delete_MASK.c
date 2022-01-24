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
struct addrtree {int size_bytes; struct addrtree* parent_edge; struct addrtree* str; struct addrtree* next; struct addrtree* first; struct addrtree* root; } ;
struct addrnode {int size_bytes; struct addrnode* parent_edge; struct addrnode* str; struct addrnode* next; struct addrnode* first; struct addrnode* root; } ;

/* Variables and functions */
 int FUNC0 (struct addrtree*) ; 
 int /*<<< orphan*/  FUNC1 (struct addrtree*,struct addrtree*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrtree*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct addrtree*,struct addrtree*) ; 

void FUNC5(struct addrtree *tree)
{
	struct addrnode *n;
	if (!tree) return;
	FUNC1(tree, tree->root);
	FUNC2(tree->root);
	tree->size_bytes -= sizeof(struct addrnode);
	while ((n = tree->first)) {
		tree->first = n->next;
		FUNC1(tree, n);
		tree->size_bytes -= FUNC4(tree, n);
		FUNC2(n->parent_edge->str);
		FUNC2(n->parent_edge);
		FUNC2(n);
	}
	FUNC3(sizeof *tree == FUNC0(tree));
	FUNC2(tree);
}