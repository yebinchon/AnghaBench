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
struct roff_node {struct roff_node* next; struct roff_node* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_spc ; 
 int /*<<< orphan*/  FUNC0 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  outflags ; 

__attribute__((used)) static int
FUNC2(struct roff_node *n)
{
	n = n->child;
	if (n == NULL)
		return 0;
	FUNC0(n);
	n = n->next;
	if (n == NULL)
		return 0;
	outflags &= ~MD_spc;
	FUNC1("(");
	FUNC0(n);
	FUNC1(")");
	return 0;
}