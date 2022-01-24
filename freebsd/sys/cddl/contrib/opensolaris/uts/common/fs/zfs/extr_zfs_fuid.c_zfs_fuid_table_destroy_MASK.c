#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  f_ksid; } ;
typedef  TYPE_1__ fuid_domain_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(avl_tree_t *idx_tree, avl_tree_t *domain_tree)
{
	fuid_domain_t *domnode;
	void *cookie;

	cookie = NULL;
	while ((domnode = FUNC1(domain_tree, &cookie)))
		FUNC3(domnode->f_ksid);

	FUNC0(domain_tree);
	cookie = NULL;
	while ((domnode = FUNC1(idx_tree, &cookie)))
		FUNC2(domnode, sizeof (fuid_domain_t));
	FUNC0(idx_tree);
}