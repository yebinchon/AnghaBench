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
struct ibv_mem_node {int color; struct ibv_mem_node* left; struct ibv_mem_node* right; struct ibv_mem_node* parent; } ;

/* Variables and functions */
 void* IBV_BLACK ; 
 int IBV_RED ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_mem_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_mem_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibv_mem_node*) ; 
 struct ibv_mem_node* mm_root ; 

__attribute__((used)) static void FUNC3(struct ibv_mem_node *node)
{
	struct ibv_mem_node *child, *parent, *sib, *tmp;
	int nodecol;

	if (node->left && node->right) {
		tmp = node->left;
		while (tmp->right)
			tmp = tmp->right;

		nodecol    = tmp->color;
		child      = tmp->left;
		tmp->color = node->color;

		if (tmp->parent != node) {
			parent        = tmp->parent;
			parent->right = tmp->left;
			if (tmp->left)
				tmp->left->parent = parent;

			tmp->left   	   = node->left;
			node->left->parent = tmp;
		} else
			parent = tmp;

		tmp->right          = node->right;
		node->right->parent = tmp;

		tmp->parent = node->parent;
		if (node->parent) {
			if (node->parent->left == node)
				node->parent->left = tmp;
			else
				node->parent->right = tmp;
		} else
			mm_root = tmp;
	} else {
		nodecol = node->color;

		child  = node->left ? node->left : node->right;
		parent = node->parent;

		if (child)
			child->parent = parent;
		if (parent) {
			if (parent->left == node)
				parent->left = child;
			else
				parent->right = child;
		} else
			mm_root = child;
	}

	FUNC2(node);

	if (nodecol == IBV_RED)
		return;

	while ((!child || child->color == IBV_BLACK) && child != mm_root) {
		if (parent->left == child) {
			sib = parent->right;

			if (sib->color == IBV_RED) {
				parent->color = IBV_RED;
				sib->color    = IBV_BLACK;
				FUNC0(parent);
				sib = parent->right;
			}

			if ((!sib->left  || sib->left->color  == IBV_BLACK) &&
			    (!sib->right || sib->right->color == IBV_BLACK)) {
				sib->color = IBV_RED;
				child  = parent;
				parent = child->parent;
			} else {
				if (!sib->right || sib->right->color == IBV_BLACK) {
					if (sib->left)
						sib->left->color = IBV_BLACK;
					sib->color = IBV_RED;
					FUNC1(sib);
					sib = parent->right;
				}

				sib->color    = parent->color;
				parent->color = IBV_BLACK;
				if (sib->right)
					sib->right->color = IBV_BLACK;
				FUNC0(parent);
				child = mm_root;
				break;
			}
		} else {
			sib = parent->left;

			if (sib->color == IBV_RED) {
				parent->color = IBV_RED;
				sib->color    = IBV_BLACK;
				FUNC1(parent);
				sib = parent->left;
			}

			if ((!sib->left  || sib->left->color  == IBV_BLACK) &&
			    (!sib->right || sib->right->color == IBV_BLACK)) {
				sib->color = IBV_RED;
				child  = parent;
				parent = child->parent;
			} else {
				if (!sib->left || sib->left->color == IBV_BLACK) {
					if (sib->right)
						sib->right->color = IBV_BLACK;
					sib->color = IBV_RED;
					FUNC0(sib);
					sib = parent->left;
				}

				sib->color    = parent->color;
				parent->color = IBV_BLACK;
				if (sib->left)
					sib->left->color = IBV_BLACK;
				FUNC1(parent);
				child = mm_root;
				break;
			}
		}
	}

	if (child)
		child->color = IBV_BLACK;
}