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
struct val_neg_zone {int nsec3_hash; size_t nsec3_iter; size_t nsec3_saltlen; int /*<<< orphan*/ * nsec3_salt; int /*<<< orphan*/  tree; } ;
struct val_neg_data {scalar_t__ count; int in_use; struct val_neg_data* parent; int /*<<< orphan*/  node; struct val_neg_zone* zone; scalar_t__ len; int /*<<< orphan*/  name; } ;
struct val_neg_cache {size_t nsec3_max_iter; int /*<<< orphan*/  use; } ;
struct TYPE_4__ {size_t dname_len; int /*<<< orphan*/  type; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/ * dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ security; scalar_t__ rrsig_count; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 struct val_neg_data* FUNC7 (struct val_neg_zone*,int /*<<< orphan*/ *,size_t,int) ; 
 struct val_neg_data* FUNC8 (int /*<<< orphan*/ *,size_t,int,struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct val_neg_cache*,struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct val_neg_cache*,struct val_neg_data*) ; 
 scalar_t__ FUNC11 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int*,size_t*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ sec_status_secure ; 
 scalar_t__ sec_status_unchecked ; 
 int /*<<< orphan*/  FUNC15 (struct val_neg_cache*,struct val_neg_zone*,struct val_neg_data*,struct ub_packed_rrset_key*) ; 

void FUNC16(struct val_neg_cache* neg, 
	struct val_neg_zone* zone, struct ub_packed_rrset_key* nsec)
{
	struct packed_rrset_data* d;
	struct val_neg_data* parent;
	struct val_neg_data* el;
	uint8_t* nm = nsec->rk.dname;
	size_t nm_len = nsec->rk.dname_len;
	int labs = FUNC0(nsec->rk.dname);

	d = (struct packed_rrset_data*)nsec->entry.data;
	if( !(d->security == sec_status_secure ||
		(d->security == sec_status_unchecked && d->rrsig_count > 0)))
		return;
	FUNC4(VERB_ALGO, "negcache rr", 
		nsec->rk.dname, FUNC12(nsec->rk.type), 
		FUNC12(nsec->rk.rrset_class));

	/* find closest enclosing parent data that (still) exists */
	parent = FUNC7(zone, nm, nm_len, labs);
	if(parent && FUNC13(parent->name, nm) == 0) {
		/* perfect match already exists */
		FUNC2(parent->count > 0);
		el = parent;
	} else { 
		struct val_neg_data* p, *np;

		/* create subtree for perfect match */
		/* if parent exists, it is in use */
		FUNC2(!parent || parent->count > 0);

		el = FUNC8(nm, nm_len, labs, parent);
		if(!el) {
			FUNC3("out of memory inserting NSEC negative cache");
			return;
		}
		el->in_use = 0; /* set on below */

		/* insert the list of zones into the tree */
		p = el;
		while(p) {
			np = p->parent;
			/* mem use */
			neg->use += sizeof(struct val_neg_data) + p->len;
			/* insert in tree */
			p->zone = zone;
			(void)FUNC14(&zone->tree, &p->node);
			/* last one needs proper parent pointer */
			if(np == NULL)
				p->parent = parent;
			p = np;
		}
	}

	if(!el->in_use) {
		struct val_neg_data* p;

		el->in_use = 1;
		/* increase usage count of all parents */
		for(p=el; p; p = p->parent) {
			p->count++;
		}

		FUNC9(neg, el);
	} else {
		/* in use, bring to front, lru */
		FUNC10(neg, el);
	}

	/* if nsec3 store last used parameters */
	if(FUNC12(nsec->rk.type) == LDNS_RR_TYPE_NSEC3) {
		int h;
		uint8_t* s;
		size_t slen, it;
		if(FUNC11(nsec, 0, &h, &it, &s, &slen) &&
			it <= neg->nsec3_max_iter &&
			(h != zone->nsec3_hash || it != zone->nsec3_iter ||
			slen != zone->nsec3_saltlen || 
			FUNC5(zone->nsec3_salt, s, slen) != 0)) {

			if(slen > 0) {
				uint8_t* sa = FUNC6(s, slen);
				if(sa) {
					FUNC1(zone->nsec3_salt);
					zone->nsec3_salt = sa;
					zone->nsec3_saltlen = slen;
					zone->nsec3_iter = it;
					zone->nsec3_hash = h;
				}
			} else {
				FUNC1(zone->nsec3_salt);
				zone->nsec3_salt = NULL;
				zone->nsec3_saltlen = 0;
				zone->nsec3_iter = it;
				zone->nsec3_hash = h;
			}
		}
	}

	/* wipe out the cache items between NSEC start and end */
	FUNC15(neg, zone, el, nsec);
}