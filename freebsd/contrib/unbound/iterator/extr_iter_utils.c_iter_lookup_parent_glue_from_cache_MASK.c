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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  qclass; } ;
struct module_env {int /*<<< orphan*/ * now; int /*<<< orphan*/  rrset_cache; } ;
struct delegpt_ns {int done_pside4; int done_pside6; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  PACKED_RRSET_PARENT_SIDE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int) ; 
 size_t FUNC2 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct ub_packed_rrset_key*) ; 
 struct ub_packed_rrset_key* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct module_env* env,
        struct delegpt* dp, struct regional* region, struct query_info* qinfo)
{
	struct ub_packed_rrset_key* akey;
	struct delegpt_ns* ns;
	size_t num = FUNC2(dp);
	for(ns = dp->nslist; ns; ns = ns->next) {
		/* get cached parentside A */
		akey = FUNC6(env->rrset_cache, ns->name, 
			ns->namelen, LDNS_RR_TYPE_A, qinfo->qclass, 
			PACKED_RRSET_PARENT_SIDE, *env->now, 0);
		if(akey) {
			FUNC5(VERB_ALGO, "found parent-side", akey);
			ns->done_pside4 = 1;
			/* a negative-cache-element has no addresses it adds */
			if(!FUNC0(dp, region, akey, 1))
				FUNC4("malloc failure in lookup_parent_glue");
			FUNC3(&akey->entry.lock);
		}
		/* get cached parentside AAAA */
		akey = FUNC6(env->rrset_cache, ns->name, 
			ns->namelen, LDNS_RR_TYPE_AAAA, qinfo->qclass, 
			PACKED_RRSET_PARENT_SIDE, *env->now, 0);
		if(akey) {
			FUNC5(VERB_ALGO, "found parent-side", akey);
			ns->done_pside6 = 1;
			/* a negative-cache-element has no addresses it adds */
			if(!FUNC1(dp, region, akey, 1))
				FUNC4("malloc failure in lookup_parent_glue");
			FUNC3(&akey->entry.lock);
		}
	}
	/* see if new (but lame) addresses have become available */
	return FUNC2(dp) != num;
}