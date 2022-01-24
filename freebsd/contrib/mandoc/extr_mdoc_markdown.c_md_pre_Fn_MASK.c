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
 int /*<<< orphan*/  FUNC1 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  outflags ; 

__attribute__((used)) static int
FUNC5(struct roff_node *n)
{
	FUNC2(n);

	if ((n = n->child) == NULL)
		return 0;

	FUNC3("**");
	outflags &= ~MD_spc;
	FUNC0(n);
	outflags &= ~MD_spc;
	FUNC3("**");
	outflags &= ~MD_spc;
	FUNC4("(");

	if ((n = n->next) != NULL)
		FUNC1(n);
	return 0;
}