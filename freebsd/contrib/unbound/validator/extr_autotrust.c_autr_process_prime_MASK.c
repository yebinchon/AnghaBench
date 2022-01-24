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
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct trust_anchor {int /*<<< orphan*/  dnskey_rrset; int /*<<< orphan*/  ds_rrset; TYPE_1__* autr; int /*<<< orphan*/  dclass; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; } ;
struct module_qstate {int dummy; } ;
struct module_env {scalar_t__* now; } ;
struct TYPE_2__ {scalar_t__ query_failed; scalar_t__ last_success; scalar_t__ last_queried; scalar_t__ revoked; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC1 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_env*,struct trust_anchor*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,struct trust_anchor*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_env*,struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC5 (struct module_env*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,int*,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC6 (struct module_env*,struct trust_anchor*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct module_env*,struct trust_anchor*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC12 (struct module_env*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct module_env*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,struct module_qstate*) ; 

int FUNC15(struct module_env* env, struct val_env* ve,
	struct trust_anchor* tp, struct ub_packed_rrset_key* dnskey_rrset,
	struct module_qstate* qstate)
{
	int changed = 0;
	FUNC8(tp && tp->autr);
	/* autotrust update trust anchors */
	/* the tp is locked, and stays locked unless it is deleted */

	/* we could just catch the anchor here while another thread
	 * is busy deleting it. Just unlock and let the other do its job */
	if(tp->autr->revoked) {
		FUNC10(VERB_ALGO, "autotrust not processed, "
			"trust point revoked", tp->name, 
			LDNS_RR_TYPE_DNSKEY, tp->dclass);
		FUNC7(&tp->lock);
		return 0; /* it is revoked */
	}

	/* query_dnskeys(): */
	tp->autr->last_queried = *env->now;

	FUNC10(VERB_ALGO, "autotrust process for",
		tp->name, LDNS_RR_TYPE_DNSKEY, tp->dclass);
	/* see if time alone makes some keys valid */
	FUNC2(env, tp, &changed);
	if(changed) {
		FUNC13(VERB_ALGO, "autotrust: morekeys, reassemble");
		if(!FUNC0(tp)) {
			FUNC9("malloc failure assembling autotrust keys");
			return 1; /* unchanged */
		}
	}
	/* did we get any data? */
	if(!dnskey_rrset) {
		FUNC13(VERB_ALGO, "autotrust: no dnskey rrset");
		/* no update of query_failed, because then we would have
		 * to write to disk. But we cannot because we maybe are
		 * still 'initializing' with DS records, that we cannot write
		 * in the full format (which only contains KSKs). */
		return 1; /* trust point exists */
	}
	/* check for revoked keys to remove immediately */
	FUNC5(env, ve, tp, dnskey_rrset, &changed, qstate);
	if(changed) {
		FUNC13(VERB_ALGO, "autotrust: revokedkeys, reassemble");
		if(!FUNC0(tp)) {
			FUNC9("malloc failure assembling autotrust keys");
			return 1; /* unchanged */
		}
		if(!tp->ds_rrset && !tp->dnskey_rrset) {
			/* no more keys, all are revoked */
			/* this is a success for this probe attempt */
			tp->autr->last_success = *env->now;
			FUNC3(env, tp, dnskey_rrset);
			return 0; /* trust point removed */
		}
	}
	/* verify the dnskey rrset and see if it is valid. */
	if(!FUNC14(env, ve, tp, dnskey_rrset, qstate)) {
		FUNC13(VERB_ALGO, "autotrust: dnskey did not verify.");
		/* only increase failure count if this is not the first prime,
		 * this means there was a previous successful probe */
		if(tp->autr->last_success) {
			tp->autr->query_failed += 1;
			FUNC4(env, tp);
		}
		return 1; /* trust point exists */
	}

	tp->autr->last_success = *env->now;
	tp->autr->query_failed = 0;

	/* Add new trust anchors to the data structure
	 * - note which trust anchors are seen this probe.
	 * Set trustpoint query_interval and retry_time.
	 * - find minimum rrsig expiration interval
	 */
	if(!FUNC12(env, ve, tp, dnskey_rrset, &changed)) {
		FUNC9("malloc failure in autotrust update_events. "
			"trust point unchanged.");
		return 1; /* trust point unchanged, so exists */
	}

	/* - for every SEP key do the 5011 statetable.
	 * - remove missing trustanchors (if veryold and we have new anchors).
	 */
	if(!FUNC6(env, tp, &changed)) {
		FUNC9("malloc failure in autotrust do_statetable. "
			"trust point unchanged.");
		return 1; /* trust point unchanged, so exists */
	}

	FUNC1(tp);
	if(!FUNC11(env, tp, dnskey_rrset))
		return 0; /* trust point does not exist */
	FUNC4(env, tp);
	if(changed) {
		FUNC13(VERB_ALGO, "autotrust: changed, reassemble");
		if(!FUNC0(tp)) {
			FUNC9("malloc failure assembling autotrust keys");
			return 1; /* unchanged */
		}
		if(!tp->ds_rrset && !tp->dnskey_rrset) {
			/* no more keys, all are revoked */
			FUNC3(env, tp, dnskey_rrset);
			return 0; /* trust point removed */
		}
	} else FUNC13(VERB_ALGO, "autotrust: no changes");
	
	return 1; /* trust point exists */
}