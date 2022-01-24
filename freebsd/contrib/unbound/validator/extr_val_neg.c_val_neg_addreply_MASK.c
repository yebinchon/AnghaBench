#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ count; } ;
struct val_neg_zone {TYPE_3__ tree; int /*<<< orphan*/  name; } ;
struct val_neg_cache {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {size_t dname_len; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/ * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; TYPE_4__** rrsets; } ;
struct TYPE_6__ {int /*<<< orphan*/  dname; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {TYPE_2__ rk; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 size_t FUNC0 (struct reply_info*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct val_neg_zone* FUNC7 (struct val_neg_cache*,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct val_neg_cache*,struct val_neg_zone*) ; 
 struct val_neg_zone* FUNC9 (struct val_neg_cache*,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct val_neg_cache*,struct val_neg_zone*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct val_neg_cache*,size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC13 (struct reply_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct reply_info*) ; 
 int /*<<< orphan*/ * FUNC15 (struct reply_info*,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (struct val_neg_zone*) ; 

void FUNC17(struct val_neg_cache* neg, struct reply_info* rep)
{
	size_t i, need;
	struct ub_packed_rrset_key* soa;
	uint8_t* dname = NULL;
	size_t dname_len;
	uint16_t rrset_class;
	struct val_neg_zone* zone;
	/* see if secure nsecs inside */
	if(!FUNC14(rep))
		return;
	/* find the zone name in message */
	if((soa = FUNC13(rep))) {
		dname = soa->rk.dname;
		dname_len = soa->rk.dname_len;
		rrset_class = FUNC12(soa->rk.rrset_class);
	}
	else {
		/* No SOA in positive (wildcard) answer. Use signer from the 
		 * validated answer RRsets' signature. */
		if(!(dname = FUNC15(rep, &dname_len, &rrset_class)))
			return;
	}

	FUNC6(VERB_ALGO, "negcache insert for zone",
		dname, LDNS_RR_TYPE_SOA, rrset_class);
	
	/* ask for enough space to store all of it */
	need = FUNC0(rep) + 
		FUNC1(dname, dname_len);
	FUNC3(&neg->lock);
	FUNC11(neg, need);

	/* find or create the zone entry */
	zone = FUNC9(neg, dname, dname_len, rrset_class);
	if(!zone) {
		if(!(zone = FUNC7(neg, dname, dname_len,
			rrset_class))) {
			FUNC4(&neg->lock);
			FUNC5("out of memory adding negative zone");
			return;
		}
	}
	FUNC16(zone);

	/* insert the NSECs */
	for(i=rep->an_numrrsets; i< rep->an_numrrsets+rep->ns_numrrsets; i++){
		if(FUNC12(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC)
			continue;
		if(!FUNC2(rep->rrsets[i]->rk.dname, 
			zone->name)) continue;
		/* insert NSEC into this zone's tree */
		FUNC10(neg, zone, rep->rrsets[i]);
	}
	if(zone->tree.count == 0) {
		/* remove empty zone if inserts failed */
		FUNC8(neg, zone);
	}
	FUNC4(&neg->lock);
}