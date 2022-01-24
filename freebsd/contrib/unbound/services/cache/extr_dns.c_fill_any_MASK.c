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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ trust; } ;
struct module_env {int /*<<< orphan*/  rrset_cache; TYPE_1__* cfg; int /*<<< orphan*/ * now; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct TYPE_5__ {int /*<<< orphan*/  security; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {scalar_t__ deny_any; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RCODE_NOTIMPL ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_DNAME ; 
 scalar_t__ LDNS_RR_TYPE_MX ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 struct dns_msg* FUNC1 (int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__,struct regional*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ub_packed_rrset_key* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rrset_trust_add_AA ; 
 scalar_t__ rrset_trust_add_noAA ; 
 scalar_t__ rrset_trust_auth_AA ; 
 scalar_t__ rrset_trust_auth_noAA ; 
 int /*<<< orphan*/  sec_status_indeterminate ; 

__attribute__((used)) static struct dns_msg*
FUNC5(struct module_env* env,
	uint8_t* qname, size_t qnamelen, uint16_t qtype, uint16_t qclass,
	struct regional* region)
{
	time_t now = *env->now;
	struct dns_msg* msg = NULL;
	uint16_t lookup[] = {LDNS_RR_TYPE_A, LDNS_RR_TYPE_AAAA,
		LDNS_RR_TYPE_MX, LDNS_RR_TYPE_SOA, LDNS_RR_TYPE_NS,
		LDNS_RR_TYPE_DNAME, 0};
	int i, num=6; /* number of RR types to look up */
	FUNC3(lookup[num] == 0);

	if(env->cfg->deny_any) {
		/* return empty message */
		msg = FUNC1(qname, qnamelen, qtype, qclass,
			region, 0);
		if(!msg) {
			return NULL;
		}
		/* set NOTIMPL for RFC 8482 */
		msg->rep->flags |= LDNS_RCODE_NOTIMPL;
		msg->rep->security = sec_status_indeterminate;
		return msg;
	}

	for(i=0; i<num; i++) {
		/* look up this RR for inclusion in type ANY response */
		struct ub_packed_rrset_key* rrset = FUNC4(
			env->rrset_cache, qname, qnamelen, lookup[i],
			qclass, 0, now, 0);
		struct packed_rrset_data *d;
		if(!rrset)
			continue;

		/* only if rrset from answer section */
		d = (struct packed_rrset_data*)rrset->entry.data;
		if(d->trust == rrset_trust_add_noAA ||
			d->trust == rrset_trust_auth_noAA ||
			d->trust == rrset_trust_add_AA ||
			d->trust == rrset_trust_auth_AA) {
			FUNC2(&rrset->entry.lock);
			continue;
		}

		/* create msg if none */
		if(!msg) {
			msg = FUNC1(qname, qnamelen, qtype, qclass,
				region, (size_t)(num-i));
			if(!msg) {
				FUNC2(&rrset->entry.lock);
				return NULL;
			}
		}

		/* add RRset to response */
		if(!FUNC0(msg, region, rrset, now)) {
			FUNC2(&rrset->entry.lock);
			return NULL;
		}
		FUNC2(&rrset->entry.lock);
	}
	return msg;
}