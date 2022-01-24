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
struct roff_node {struct roff_node* child; } ;
struct roff_man {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_man*,struct roff_node*) ; 

void
FUNC2(struct roff_man *man, struct roff_node *n)
{

	while (n->child != NULL)
		FUNC2(man, n->child);
	FUNC1(man, n);
	FUNC0(n);
}