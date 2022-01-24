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
struct roff_node {struct roff_node* next; int /*<<< orphan*/  string; struct roff_node* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_spc ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outcount ; 
 int /*<<< orphan*/  outflags ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static int
FUNC4(struct roff_node *n)
{
	const struct roff_node *nch;

	FUNC0("[");
	outflags &= ~MD_spc;
	for (nch = n->child; nch != NULL; nch = nch->next)
		FUNC2(nch->string);
	outflags &= ~MD_spc;
	FUNC0("](mailto:");
	for (nch = n->child; nch != NULL; nch = nch->next) {
		FUNC1(nch->string);
		if (nch->next != NULL) {
			FUNC3(' ');
			outcount++;
		}
	}
	outflags &= ~MD_spc;
	FUNC0(")");
	return 0;
}