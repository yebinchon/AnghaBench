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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int count; } ;
struct module_env {int dummy; } ;
struct dns_msg {int dummy; } ;
struct delegpt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 struct delegpt* FUNC0 (struct regional*) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt*,struct regional*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 struct dns_msg* FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regional*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct module_env*,int /*<<< orphan*/ ,struct regional*,struct delegpt*,int /*<<< orphan*/ ,struct dns_msg**) ; 
 int /*<<< orphan*/  FUNC6 (struct module_env*,struct regional*,struct dns_msg*,struct delegpt*,int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC7 (struct module_env*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

struct delegpt* 
FUNC10(struct module_env* env, uint8_t* qname, 
	size_t qnamelen, uint16_t qtype, uint16_t qclass, 
	struct regional* region, struct dns_msg** msg, time_t now)
{
	/* try to find closest NS rrset */
	struct ub_packed_rrset_key* nskey;
	struct packed_rrset_data* nsdata;
	struct delegpt* dp;

	nskey = FUNC7(env, qname, qnamelen, qclass, now,
		LDNS_RR_TYPE_NS, 0);
	if(!nskey) /* hope the caller has hints to prime or something */
		return NULL;
	nsdata = (struct packed_rrset_data*)nskey->entry.data;
	/* got the NS key, create delegation point */
	dp = FUNC0(region);
	if(!dp || !FUNC2(dp, region, nskey->rk.dname)) {
		FUNC8(&nskey->entry.lock);
		FUNC9("find_delegation: out of memory");
		return NULL;
	}
	/* create referral message */
	if(msg) {
		/* allocate the array to as much as we could need:
		 *	NS rrset + DS/NSEC rrset +
		 *	A rrset for every NS RR
		 *	AAAA rrset for every NS RR
		 */
		*msg = FUNC4(qname, qnamelen, qtype, qclass, region, 
			2 + nsdata->count*2);
		if(!*msg || !FUNC3(*msg, region, nskey, now)) {
			FUNC8(&nskey->entry.lock);
			FUNC9("find_delegation: out of memory");
			return NULL;
		}
	}
	if(!FUNC1(dp, region, nskey, 0))
		FUNC9("find_delegation: addns out of memory");
	FUNC8(&nskey->entry.lock); /* first unlock before next lookup*/
	/* find and add DS/NSEC (if any) */
	if(msg)
		FUNC6(env, region, *msg, dp, now);
	/* find and add A entries */
	if(!FUNC5(env, qclass, region, dp, now, msg))
		FUNC9("find_delegation: addrs out of memory");
	return dp;
}