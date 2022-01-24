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
struct ibv_mem_node {uintptr_t start; scalar_t__ refcnt; } ;

/* Variables and functions */
 struct ibv_mem_node* FUNC0 (uintptr_t,uintptr_t) ; 
 struct ibv_mem_node* FUNC1 (struct ibv_mem_node*) ; 
 struct ibv_mem_node* FUNC2 (struct ibv_mem_node*,struct ibv_mem_node*) ; 
 struct ibv_mem_node* FUNC3 (struct ibv_mem_node*,uintptr_t) ; 

__attribute__((used)) static struct ibv_mem_node *FUNC4(uintptr_t start, uintptr_t end,
					   int inc)
{
	struct ibv_mem_node *node, *tmp = NULL;

	node = FUNC0(start, end);
	if (node->start < start)
		node = FUNC3(node, start);
	else {
		tmp = FUNC1(node);
		if (tmp && tmp->refcnt == node->refcnt + inc)
			node = FUNC2(node, tmp);
	}
	return node;
}