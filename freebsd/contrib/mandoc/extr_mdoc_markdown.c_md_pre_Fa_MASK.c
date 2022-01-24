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
struct roff_node {scalar_t__ tok; struct roff_node* next; struct roff_node* child; } ;

/* Variables and functions */
 scalar_t__ MDOC_Fa ; 
 int /*<<< orphan*/  MD_spc ; 
 int /*<<< orphan*/  FUNC0 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  outflags ; 

__attribute__((used)) static int
FUNC3(struct roff_node *n)
{
	int	 am_Fa;

	am_Fa = n->tok == MDOC_Fa;

	if (am_Fa)
		n = n->child;

	while (n != NULL) {
		FUNC1("*");
		outflags &= ~MD_spc;
		FUNC0(n);
		outflags &= ~MD_spc;
		FUNC1("*");
		if ((n = n->next) != NULL)
			FUNC2(",");
	}
	return 0;
}