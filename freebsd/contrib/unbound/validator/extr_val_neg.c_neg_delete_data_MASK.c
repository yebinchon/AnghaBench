#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ count; } ;
struct val_neg_zone {TYPE_1__ tree; } ;
struct val_neg_data {int in_use; scalar_t__ count; struct val_neg_data* name; scalar_t__ len; int /*<<< orphan*/  node; struct val_neg_data* parent; struct val_neg_zone* zone; } ;
struct val_neg_cache {int /*<<< orphan*/  use; struct val_neg_data* last; struct val_neg_data* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct val_neg_cache*,struct val_neg_zone*) ; 
 int /*<<< orphan*/  FUNC3 (struct val_neg_cache*,struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC5(struct val_neg_cache* neg, struct val_neg_data* el)
{
	struct val_neg_zone* z;
	struct val_neg_data* p, *np;
	if(!el) return;
	z = el->zone;
	FUNC1(el->in_use);
	FUNC1(el->count > 0);
	el->in_use = 0;

	/* remove it from the lru list */
	FUNC3(neg, el);
	FUNC1(neg->first != el && neg->last != el);
	
	/* go up the tree and reduce counts */
	p = el;
	while(p) {
		FUNC1(p->count > 0);
		p->count --;
		p = p->parent;
	}

	/* delete 0 count items from tree */
	p = el;
	while(p && p->count == 0) {
		np = p->parent;
		(void)FUNC4(&z->tree, &p->node);
		neg->use -= p->len + sizeof(*p);
		FUNC0(p->name);
		FUNC0(p);
		p = np;
	}

	/* check if the zone is now unused */
	if(z->tree.count == 0) {
		FUNC2(neg, z);
	}
}