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
struct val_env {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct reply_info {size_t an_numrrsets; int security; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {int dummy; } ;
struct module_env {int /*<<< orphan*/ * now; int /*<<< orphan*/  alloc; int /*<<< orphan*/  rrset_cache; TYPE_1__* cfg; } ;
struct key_entry_key {int dummy; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_3__ {scalar_t__ aggressive_nsec; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct module_env*,struct val_env*,struct ub_packed_rrset_key**,size_t,struct query_info*,struct key_entry_key*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ub_packed_rrset_key*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 scalar_t__ FUNC4 (struct ub_packed_rrset_key*,struct query_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ub_packed_rrset_key*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(struct module_env* env, struct val_env* ve,
	struct query_info* qchase, struct reply_info* chase_reply,
	struct key_entry_key* kkey)
{
	uint8_t* wc = NULL;
	size_t wl;
	int wc_cached = 0;
	int wc_NSEC_ok = 0;
	int nsec3s_seen = 0;
	size_t i;
	struct ub_packed_rrset_key* s;

	/* validate the ANSWER section - this will be the answer itself */
	for(i=0; i<chase_reply->an_numrrsets; i++) {
		s = chase_reply->rrsets[i];

		/* Check to see if the rrset is the result of a wildcard 
		 * expansion. If so, an additional check will need to be 
		 * made in the authority section. */
		if(!FUNC5(s, &wc, &wl)) {
			FUNC0(VERB_QUERY, "Positive response has "
				"inconsistent wildcard sigs:", s->rk.dname,
				FUNC2(s->rk.type), FUNC2(s->rk.rrset_class));
			chase_reply->security = sec_status_bogus;
			return;
		}
		if(wc && !wc_cached && env->cfg->aggressive_nsec) {
			FUNC3(env->rrset_cache, s, wc, wl,
				env->alloc, *env->now);
			wc_cached = 1;
		}

	}

	/* validate the AUTHORITY section as well - this will generally be 
	 * the NS rrset (which could be missing, no problem) */
	for(i=chase_reply->an_numrrsets; i<chase_reply->an_numrrsets+
		chase_reply->ns_numrrsets; i++) {
		s = chase_reply->rrsets[i];

		/* If this is a positive wildcard response, and we have a 
		 * (just verified) NSEC record, try to use it to 1) prove 
		 * that qname doesn't exist and 2) that the correct wildcard 
		 * was used. */
		if(wc != NULL && FUNC2(s->rk.type) == LDNS_RR_TYPE_NSEC) {
			if(FUNC4(s, qchase, wc)) {
				wc_NSEC_ok = 1;
			}
			/* if not, continue looking for proof */
		}

		/* Otherwise, if this is a positive wildcard response and 
		 * we have NSEC3 records */
		if(wc != NULL && FUNC2(s->rk.type) == LDNS_RR_TYPE_NSEC3) {
			nsec3s_seen = 1;
		}
	}

	/* If this was a positive wildcard response that we haven't already
	 * proven, and we have NSEC3 records, try to prove it using the NSEC3
	 * records. */
	if(wc != NULL && !wc_NSEC_ok && nsec3s_seen) {
		enum sec_status sec = FUNC1(env, ve, 
			chase_reply->rrsets+chase_reply->an_numrrsets,
			chase_reply->ns_numrrsets, qchase, kkey, wc);
		if(sec == sec_status_insecure) {
			FUNC6(VERB_ALGO, "Positive wildcard response is "
				"insecure");
			chase_reply->security = sec_status_insecure;
			return;
		} else if(sec == sec_status_secure)
			wc_NSEC_ok = 1;
	}

	/* If after all this, we still haven't proven the positive wildcard
	 * response, fail. */
	if(wc != NULL && !wc_NSEC_ok) {
		FUNC6(VERB_QUERY, "positive response was wildcard "
			"expansion and did not prove original data "
			"did not exist");
		chase_reply->security = sec_status_bogus;
		return;
	}

	FUNC6(VERB_ALGO, "Successfully validated positive response");
	chase_reply->security = sec_status_secure;
}