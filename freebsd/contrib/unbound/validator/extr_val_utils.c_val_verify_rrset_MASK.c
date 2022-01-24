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
struct val_env {int /*<<< orphan*/  bogus_lock; int /*<<< orphan*/  num_rrset_bogus; int /*<<< orphan*/  bogus_ttl; } ;
struct TYPE_4__ {int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; int /*<<< orphan*/  dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ security; size_t count; size_t rrsig_count; int /*<<< orphan*/ * rr_ttl; int /*<<< orphan*/  ttl; int /*<<< orphan*/  trust; } ;
struct module_qstate {int dummy; } ;
struct module_env {int /*<<< orphan*/ * now; int /*<<< orphan*/  rrset_cache; int /*<<< orphan*/  scratch; } ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int FUNC0 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rrset_trust_validated ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int sec_status_bogus ; 
 scalar_t__ sec_status_secure ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

enum sec_status 
FUNC10(struct module_env* env, struct val_env* ve,
        struct ub_packed_rrset_key* rrset, struct ub_packed_rrset_key* keys,
	uint8_t* sigalg, char** reason, sldns_pkt_section section,
	struct module_qstate* qstate)
{
	enum sec_status sec;
	struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
		entry.data;
	if(d->security == sec_status_secure) {
		/* re-verify all other statuses, because keyset may change*/
		FUNC3(VERB_ALGO, "verify rrset cached", 
			rrset->rk.dname, FUNC4(rrset->rk.type), 
			FUNC4(rrset->rk.rrset_class));
		return d->security;
	}
	/* check in the cache if verification has already been done */
	FUNC6(env->rrset_cache, rrset, *env->now);
	if(d->security == sec_status_secure) {
		FUNC3(VERB_ALGO, "verify rrset from cache", 
			rrset->rk.dname, FUNC4(rrset->rk.type), 
			FUNC4(rrset->rk.rrset_class));
		return d->security;
	}
	FUNC3(VERB_ALGO, "verify rrset", rrset->rk.dname,
		FUNC4(rrset->rk.type), FUNC4(rrset->rk.rrset_class));
	sec = FUNC0(env, ve, rrset, keys, sigalg, reason,
		section, qstate);
	FUNC9(VERB_ALGO, "verify result: %s", FUNC8(sec));
	FUNC5(env->scratch);

	/* update rrset security status 
	 * only improves security status 
	 * and bogus is set only once, even if we rechecked the status */
	if(sec > d->security) {
		d->security = sec;
		if(sec == sec_status_secure)
			d->trust = rrset_trust_validated;
		else if(sec == sec_status_bogus) {
			size_t i;
			/* update ttl for rrset to fixed value. */
			d->ttl = ve->bogus_ttl;
			for(i=0; i<d->count+d->rrsig_count; i++)
				d->rr_ttl[i] = ve->bogus_ttl;
			/* leave RR specific TTL: not used for determine
			 * if RRset timed out and clients see proper value. */
			FUNC1(&ve->bogus_lock);
			ve->num_rrset_bogus++;
			FUNC2(&ve->bogus_lock);
		}
		/* if status updated - store in cache for reuse */
		FUNC7(env->rrset_cache, rrset, *env->now);
	}

	return sec;
}