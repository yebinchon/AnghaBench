#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {scalar_t__ count; } ;
struct val_neg_zone {TYPE_2__ tree; int /*<<< orphan*/ * name; } ;
struct val_neg_cache {int /*<<< orphan*/  lock; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; TYPE_3__** rrsets; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dname; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_1__ rk; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 size_t FUNC0 (struct reply_info*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct val_neg_zone* FUNC7 (struct val_neg_cache*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct val_neg_cache*,struct val_neg_zone*) ; 
 struct val_neg_zone* FUNC9 (struct val_neg_cache*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct val_neg_cache*,struct val_neg_zone*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct val_neg_cache*,size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (struct reply_info*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct val_neg_zone*) ; 

void FUNC15(struct val_neg_cache* neg, struct reply_info* rep,
	uint8_t* zone_name)
{
	size_t i, need;
	uint8_t* signer;
	size_t signer_len;
	uint16_t dclass;
	struct val_neg_zone* zone;
	/* no SOA in this message, find RRSIG over NSEC's signer name.
	 * note the NSEC records are maybe not validated yet */
	signer = FUNC13(rep, &signer_len, &dclass);
	if(!signer) 
		return;
	if(!FUNC2(signer, zone_name)) {
		/* the signer is not in the bailiwick, throw it out */
		return;
	}

	FUNC6(VERB_ALGO, "negcache insert referral ",
		signer, LDNS_RR_TYPE_NS, dclass);
	
	/* ask for enough space to store all of it */
	need = FUNC0(rep) + FUNC1(signer, signer_len);
	FUNC3(&neg->lock);
	FUNC11(neg, need);

	/* find or create the zone entry */
	zone = FUNC9(neg, signer, signer_len, dclass);
	if(!zone) {
		if(!(zone = FUNC7(neg, signer, signer_len, 
			dclass))) {
			FUNC4(&neg->lock);
			FUNC5("out of memory adding negative zone");
			return;
		}
	}
	FUNC14(zone);

	/* insert the NSECs */
	for(i=rep->an_numrrsets; i< rep->an_numrrsets+rep->ns_numrrsets; i++){
		if(FUNC12(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC &&
			FUNC12(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC3)
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