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
struct local_data {int /*<<< orphan*/  namelabs; int /*<<< orphan*/  name; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ RBTREE_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct local_data* d)
{
	/* for empty nonterminals, the deeper domain names are sorted
	 * right after them, so simply check the next name in the tree 
	 */
	struct local_data* n = (struct local_data*)FUNC1(&d->node);
	if(n == (struct local_data*)RBTREE_NULL)
		return 1; /* last in tree, no deeper node */
	if(FUNC0(n->name, n->namelabs, d->name, d->namelabs))
		return 0; /* there is a deeper node */
	return 1;
}