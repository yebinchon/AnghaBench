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
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct delegpt {int has_parent_side_NS; } ;
struct TYPE_4__ {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  FUNC0 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 struct delegpt* FUNC2 (struct regional*) ; 
 int /*<<< orphan*/  FUNC3 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct delegpt*,struct regional*,int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC5 (TYPE_2__*,size_t,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

struct delegpt* 
FUNC7(struct dns_msg* msg, struct regional* region)
{
	struct ub_packed_rrset_key* ns_rrset = NULL;
	struct delegpt* dp;
	size_t i;
	/* look for NS records in the authority section... */
	ns_rrset = FUNC5(msg->rep, msg->rep->an_numrrsets, 
		msg->rep->an_numrrsets+msg->rep->ns_numrrsets);

	/* In some cases (even legitimate, perfectly legal cases), the 
	 * NS set for the "referral" might be in the answer section. */
	if(!ns_rrset)
		ns_rrset = FUNC5(msg->rep, 0, msg->rep->an_numrrsets);
	
	/* If there was no NS rrset in the authority section, then this 
	 * wasn't a referral message. (It might not actually be a 
	 * referral message anyway) */
	if(!ns_rrset)
		return NULL;
	
	/* If we found any, then Yay! we have a delegation point. */
	dp = FUNC2(region);
	if(!dp)
		return NULL;
	dp->has_parent_side_NS = 1; /* created from message */
	if(!FUNC4(dp, region, ns_rrset->rk.dname))
		return NULL;
	if(!FUNC3(dp, region, ns_rrset, 0))
		return NULL;

	/* add glue, A and AAAA in answer and additional section */
	for(i=0; i<msg->rep->rrset_count; i++) {
		struct ub_packed_rrset_key* s = msg->rep->rrsets[i];
		/* skip auth section. FIXME really needed?*/
		if(msg->rep->an_numrrsets <= i && 
			i < (msg->rep->an_numrrsets+msg->rep->ns_numrrsets))
			continue;

		if(FUNC6(s->rk.type) == LDNS_RR_TYPE_A) {
			if(!FUNC0(dp, region, s, 0))
				return NULL;
		} else if(FUNC6(s->rk.type) == LDNS_RR_TYPE_AAAA) {
			if(!FUNC1(dp, region, s, 0))
				return NULL;
		}
	}
	return dp;
}