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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; } ;
struct regional {int dummy; } ;
struct module_env {int /*<<< orphan*/  rrset_cache; } ;
struct TYPE_4__ {int /*<<< orphan*/  qclass; } ;
struct dns_msg {TYPE_2__* rep; TYPE_1__ qinfo; } ;
struct delegpt {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {size_t rrset_count; int /*<<< orphan*/  ns_numrrsets; int /*<<< orphan*/ * rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,struct regional*,int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct module_env* env, struct regional* region, 
	struct dns_msg* msg, struct delegpt* dp, time_t now)
{
	/* Lookup the DS or NSEC at the delegation point. */
	struct ub_packed_rrset_key* rrset = FUNC3(
		env->rrset_cache, dp->name, dp->namelen, LDNS_RR_TYPE_DS, 
		msg->qinfo.qclass, 0, now, 0);
	if(!rrset) {
		/* NOTE: this won't work for alternate NSEC schemes 
		 *	(opt-in, NSEC3) */
		rrset = FUNC3(env->rrset_cache, dp->name, 
			dp->namelen, LDNS_RR_TYPE_NSEC, msg->qinfo.qclass, 
			0, now, 0);
		/* Note: the PACKED_RRSET_NSEC_AT_APEX flag is not used.
		 * since this is a referral, we need the NSEC at the parent
		 * side of the zone cut, not the NSEC at apex side. */
		if(rrset && FUNC1(rrset, LDNS_RR_TYPE_DS)) {
			FUNC0(&rrset->entry.lock);
			rrset = NULL; /* discard wrong NSEC */
		}
	}
	if(rrset) {
		/* add it to auth section. This is the second rrset. */
		if((msg->rep->rrsets[msg->rep->rrset_count] = 
			FUNC2(rrset, region, now))) {
			msg->rep->ns_numrrsets++;
			msg->rep->rrset_count++;
		}
		FUNC0(&rrset->entry.lock);
	}
}