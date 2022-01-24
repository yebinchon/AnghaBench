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
struct ibv_mem_node {uintptr_t start; uintptr_t end; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_mem_node*) ; 
 struct ibv_mem_node* FUNC1 (int) ; 

__attribute__((used)) static struct ibv_mem_node *FUNC2(struct ibv_mem_node *node,
					uintptr_t cut_line)
{
	struct ibv_mem_node *new_node = NULL;

	new_node = FUNC1(sizeof *new_node);
	if (!new_node)
		return NULL;
	new_node->start  = cut_line;
	new_node->end    = node->end;
	new_node->refcnt = node->refcnt;
	node->end  = cut_line - 1;
	FUNC0(new_node);

	return new_node;
}