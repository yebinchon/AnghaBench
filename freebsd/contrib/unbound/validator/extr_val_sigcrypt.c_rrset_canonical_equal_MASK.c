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
struct TYPE_4__ {struct ub_packed_rrset_key* data; } ;
struct TYPE_3__ {scalar_t__ dname_len; scalar_t__ flags; scalar_t__ type; scalar_t__ rrset_class; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {scalar_t__ ttl; int count; scalar_t__ rrsig_count; scalar_t__ trust; scalar_t__ security; size_t* rr_len; int /*<<< orphan*/ ** rr_data; TYPE_2__ entry; TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct rbtree_type {scalar_t__ count; } ;
struct packed_rrset_data {scalar_t__ ttl; int count; scalar_t__ rrsig_count; scalar_t__ trust; scalar_t__ security; size_t* rr_len; int /*<<< orphan*/ ** rr_data; TYPE_2__ entry; TYPE_1__ rk; } ;
struct canon_rr {size_t rr_idx; int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  fk ;
typedef  int /*<<< orphan*/  fd ;

/* Variables and functions */
 scalar_t__ RBTREE_NULL ; 
 int RR_COUNT_MAX ; 
 scalar_t__ FUNC0 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,struct rbtree_type*,struct canon_rr*) ; 
 int /*<<< orphan*/  canonical_tree_compare ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rbtree_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct rbtree_type*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct canon_rr* FUNC7 (struct regional*,int) ; 

int FUNC8(struct regional* region,
	struct ub_packed_rrset_key* k1, struct ub_packed_rrset_key* k2)
{
	struct rbtree_type sortree1, sortree2;
	struct canon_rr *rrs1, *rrs2, *p1, *p2;
	struct packed_rrset_data* d1=(struct packed_rrset_data*)k1->entry.data;
	struct packed_rrset_data* d2=(struct packed_rrset_data*)k2->entry.data;
	struct ub_packed_rrset_key fk;
	struct packed_rrset_data fd;
	size_t flen[2];
	uint8_t* fdata[2];

	/* basic compare */
	if(k1->rk.dname_len != k2->rk.dname_len ||
		k1->rk.flags != k2->rk.flags ||
		k1->rk.type != k2->rk.type ||
		k1->rk.rrset_class != k2->rk.rrset_class ||
		FUNC3(k1->rk.dname, k2->rk.dname) != 0)
		return 0;
	if(d1->ttl != d2->ttl ||
		d1->count != d2->count ||
		d1->rrsig_count != d2->rrsig_count ||
		d1->trust != d2->trust ||
		d1->security != d2->security)
		return 0;

	/* init */
	FUNC2(&fk, 0, sizeof(fk));
	FUNC2(&fd, 0, sizeof(fd));
	fk.entry.data = &fd;
	fd.count = 2;
	fd.rr_len = flen;
	fd.rr_data = fdata;
	FUNC5(&sortree1, &canonical_tree_compare);
	FUNC5(&sortree2, &canonical_tree_compare);
	if(d1->count > RR_COUNT_MAX || d2->count > RR_COUNT_MAX)
		return 1; /* protection against integer overflow */
	rrs1 = FUNC7(region, sizeof(struct canon_rr)*d1->count);
	rrs2 = FUNC7(region, sizeof(struct canon_rr)*d2->count);
	if(!rrs1 || !rrs2) return 1; /* alloc failure */

	/* sort */
	FUNC1(k1, d1, &sortree1, rrs1);
	FUNC1(k2, d2, &sortree2, rrs2);

	/* compare canonical-sorted RRs for canonical-equality */
	if(sortree1.count != sortree2.count)
		return 0;
	p1 = (struct canon_rr*)FUNC4(&sortree1);
	p2 = (struct canon_rr*)FUNC4(&sortree2);
	while(p1 != (struct canon_rr*)RBTREE_NULL &&
		p2 != (struct canon_rr*)RBTREE_NULL) {
		flen[0] = d1->rr_len[p1->rr_idx];
		flen[1] = d2->rr_len[p2->rr_idx];
		fdata[0] = d1->rr_data[p1->rr_idx];
		fdata[1] = d2->rr_data[p2->rr_idx];

		if(FUNC0(&fk, 0, 1) != 0)
			return 0;
		p1 = (struct canon_rr*)FUNC6(&p1->node);
		p2 = (struct canon_rr*)FUNC6(&p2->node);
	}
	return 1;
}