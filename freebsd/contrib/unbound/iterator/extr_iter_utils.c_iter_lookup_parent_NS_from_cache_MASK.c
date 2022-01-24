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
struct delegpt {int has_parent_side_NS; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  PACKED_RRSET_PARENT_SIDE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct ub_packed_rrset_key*) ; 
 struct ub_packed_rrset_key* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int 
FUNC4(struct module_env* env, struct delegpt* dp,
	struct regional* region, struct query_info* qinfo)
{
	struct ub_packed_rrset_key* akey;
	akey = FUNC3(env->rrset_cache, dp->name, 
		dp->namelen, LDNS_RR_TYPE_NS, qinfo->qclass, 
		PACKED_RRSET_PARENT_SIDE, *env->now, 0);
	if(akey) {
		FUNC2(VERB_ALGO, "found parent-side NS in cache", akey);
		dp->has_parent_side_NS = 1;
		/* and mark the new names as lame */
		if(!FUNC0(dp, region, akey, 1)) {
			FUNC1(&akey->entry.lock);
			return 0;
		}
		FUNC1(&akey->entry.lock);
	}
	return 1;
}