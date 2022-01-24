#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct val_neg_zone {int /*<<< orphan*/  name; } ;
struct val_neg_data {int labs; scalar_t__ in_use; int /*<<< orphan*/ * name; int /*<<< orphan*/  node; } ;
struct val_neg_cache {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ count; int* rr_len; int /*<<< orphan*/ ** rr_data; } ;
typedef  int /*<<< orphan*/  rbnode_type ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 int /*<<< orphan*/ * RBTREE_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct val_neg_cache*,struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct val_neg_cache* neg, struct val_neg_zone* zone, 
	struct val_neg_data* el, struct ub_packed_rrset_key* nsec)
{
	struct packed_rrset_data* d = (struct packed_rrset_data*)nsec->
		entry.data;
	uint8_t* end;
	size_t end_len;
	int end_labs, m;
	rbnode_type* walk, *next;
	struct val_neg_data* cur;
	uint8_t buf[257];
	/* get endpoint */
	if(!d || d->count == 0 || d->rr_len[0] < 2+1)
		return;
	if(FUNC7(nsec->rk.type) == LDNS_RR_TYPE_NSEC) {
		end = d->rr_data[0]+2;
		end_len = FUNC4(end, d->rr_len[0]-2);
		end_labs = FUNC1(end);
	} else {
		/* NSEC3 */
		if(!FUNC6(nsec, 0, buf, sizeof(buf)))
			return;
		end = buf;
		end_labs = FUNC2(end, &end_len);
	}

	/* sanity check, both owner and end must be below the zone apex */
	if(!FUNC3(el->name, zone->name) || 
		!FUNC3(end, zone->name))
		return;

	/* detect end of zone NSEC ; wipe until the end of zone */
	if(FUNC8(end, zone->name) == 0) {
		end = NULL;
	}

	walk = FUNC9(&el->node);
	while(walk && walk != RBTREE_NULL) {
		cur = (struct val_neg_data*)walk;
		/* sanity check: must be larger than start */
		if(FUNC0(cur->name, cur->labs, 
			el->name, el->labs, &m) <= 0) {
			/* r == 0 skip original record. */
			/* r < 0  too small! */
			walk = FUNC9(walk);
			continue;
		}
		/* stop at endpoint, also data at empty nonterminals must be
		 * removed (no NSECs there) so everything between 
		 * start and end */
		if(end && FUNC0(cur->name, cur->labs,
			end, end_labs, &m) >= 0) {
			break;
		}
		/* this element has to be deleted, but we cannot do it
		 * now, because we are walking the tree still ... */
		/* get the next element: */
		next = FUNC9(walk);
		/* now delete the original element, this may trigger
		 * rbtree rebalances, but really, the next element is
		 * the one we need.
		 * But it may trigger delete of other data and the
		 * entire zone. However, if that happens, this is done
		 * by deleting the *parents* of the element for deletion,
		 * and maybe also the entire zone if it is empty. 
		 * But parents are smaller in canonical compare, thus,
		 * if a larger element exists, then it is not a parent,
		 * it cannot get deleted, the zone cannot get empty.
		 * If the next==NULL, then zone can be empty. */
		if(cur->in_use)
			FUNC5(neg, cur);
		walk = next;
	}
}