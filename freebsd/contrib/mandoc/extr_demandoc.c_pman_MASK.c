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
struct roff_node {int flags; scalar_t__ type; struct roff_node* child; int /*<<< orphan*/  pos; int /*<<< orphan*/  string; int /*<<< orphan*/  line; struct roff_node* next; } ;

/* Variables and functions */
 int NODE_LINE ; 
 scalar_t__ ROFFT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC2(const struct roff_node *p, int *line, int *col, int list)
{

	for ( ; p; p = p->next) {
		if (NODE_LINE & p->flags)
			FUNC0(p->line, line, col, list);
		if (ROFFT_TEXT == p->type)
			FUNC1(p->string, p->pos, col, list);
		if (p->child)
			FUNC2(p->child, line, col, list);
	}
}