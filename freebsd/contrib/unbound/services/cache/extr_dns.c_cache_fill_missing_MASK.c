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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct msgreply_entry {TYPE_2__ entry; } ;
struct module_env {int /*<<< orphan*/  rrset_cache; int /*<<< orphan*/ * now; } ;
struct delegpt_ns {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  lame; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct delegpt*,struct msgreply_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msgreply_entry* FUNC5 (struct module_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct module_env* env, uint16_t qclass, 
	struct regional* region, struct delegpt* dp)
{
	struct delegpt_ns* ns;
	struct msgreply_entry* neg;
	struct ub_packed_rrset_key* akey;
	time_t now = *env->now;
	for(ns = dp->nslist; ns; ns = ns->next) {
		akey = FUNC6(env->rrset_cache, ns->name, 
			ns->namelen, LDNS_RR_TYPE_A, qclass, 0, now, 0);
		if(akey) {
			if(!FUNC1(dp, region, akey, ns->lame)) {
				FUNC3(&akey->entry.lock);
				return 0;
			}
			FUNC4(VERB_ALGO, "found in cache",
				ns->name, LDNS_RR_TYPE_A, qclass);
			FUNC3(&akey->entry.lock);
		} else {
			/* BIT_CD on false because delegpt lookup does
			 * not use dns64 translation */
			neg = FUNC5(env, ns->name, ns->namelen,
				LDNS_RR_TYPE_A, qclass, 0, now, 0);
			if(neg) {
				FUNC0(dp, neg);
				FUNC3(&neg->entry.lock);
			}
		}
		akey = FUNC6(env->rrset_cache, ns->name, 
			ns->namelen, LDNS_RR_TYPE_AAAA, qclass, 0, now, 0);
		if(akey) {
			if(!FUNC2(dp, region, akey, ns->lame)) {
				FUNC3(&akey->entry.lock);
				return 0;
			}
			FUNC4(VERB_ALGO, "found in cache",
				ns->name, LDNS_RR_TYPE_AAAA, qclass);
			FUNC3(&akey->entry.lock);
		} else {
			/* BIT_CD on false because delegpt lookup does
			 * not use dns64 translation */
			neg = FUNC5(env, ns->name, ns->namelen,
				LDNS_RR_TYPE_AAAA, qclass, 0, now, 0);
			if(neg) {
				FUNC0(dp, neg);
				FUNC3(&neg->entry.lock);
			}
		}
	}
	return 1;
}