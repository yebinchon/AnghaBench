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
struct ibv_mem_node {scalar_t__ color; struct ibv_mem_node* parent; struct ibv_mem_node* left; struct ibv_mem_node* right; } ;
struct TYPE_2__ {void* color; } ;

/* Variables and functions */
 void* IBV_BLACK ; 
 scalar_t__ IBV_RED ; 
 int /*<<< orphan*/  FUNC0 (struct ibv_mem_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_mem_node*) ; 
 TYPE_1__* mm_root ; 

__attribute__((used)) static void FUNC2(struct ibv_mem_node *node)
{
	struct ibv_mem_node *parent, *gp, *uncle;

	while (node->parent && node->parent->color == IBV_RED) {
		parent = node->parent;
		gp     = node->parent->parent;

		if (parent == gp->left) {
			uncle = gp->right;

			if (uncle && uncle->color == IBV_RED) {
				parent->color = IBV_BLACK;
				uncle->color  = IBV_BLACK;
				gp->color     = IBV_RED;

				node = gp;
			} else {
				if (node == parent->right) {
					FUNC0(parent);
					node   = parent;
					parent = node->parent;
				}

				parent->color = IBV_BLACK;
				gp->color     = IBV_RED;

				FUNC1(gp);
			}
		} else {
			uncle = gp->left;

			if (uncle && uncle->color == IBV_RED) {
				parent->color = IBV_BLACK;
				uncle->color  = IBV_BLACK;
				gp->color     = IBV_RED;

				node = gp;
			} else {
				if (node == parent->left) {
					FUNC1(parent);
					node   = parent;
					parent = node->parent;
				}

				parent->color = IBV_BLACK;
				gp->color     = IBV_RED;

				FUNC0(gp);
			}
		}
	}

	mm_root->color = IBV_BLACK;
}