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
struct val_neg_zone {int in_use; scalar_t__ count; struct val_neg_zone* name; struct val_neg_zone* nsec3_salt; scalar_t__ len; int /*<<< orphan*/  node; struct val_neg_zone* parent; } ;
struct val_neg_cache {int /*<<< orphan*/  use; int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct val_neg_zone*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct val_neg_cache* neg, struct val_neg_zone* z)
{
	struct val_neg_zone* p, *np;
	if(!z) return;
	FUNC1(z->in_use);
	FUNC1(z->count > 0);
	z->in_use = 0;

	/* go up the tree and reduce counts */
	p = z;
	while(p) {
		FUNC1(p->count > 0);
		p->count --;
		p = p->parent;
	}

	/* remove zones with zero count */
	p = z;
	while(p && p->count == 0) {
		np = p->parent;
		(void)FUNC2(&neg->tree, &p->node);
		neg->use -= p->len + sizeof(*p);
		FUNC0(p->nsec3_salt);
		FUNC0(p->name);
		FUNC0(p);
		p = np;
	}
}