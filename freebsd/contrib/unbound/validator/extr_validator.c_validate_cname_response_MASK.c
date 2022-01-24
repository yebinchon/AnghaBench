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
typedef  int /*<<< orphan*/  uint8_t ;
struct val_env {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; int security; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {scalar_t__ qtype; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ LDNS_RR_TYPE_DNAME ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct module_env*,struct val_env*,struct ub_packed_rrset_key**,size_t,struct query_info*,struct key_entry_key*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 scalar_t__ FUNC3 (struct ub_packed_rrset_key*,struct query_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ub_packed_rrset_key*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(struct module_env* env, struct val_env* ve,
	struct query_info* qchase, struct reply_info* chase_reply,
	struct key_entry_key* kkey)
{
	uint8_t* wc = NULL;
	size_t wl;
	int wc_NSEC_ok = 0;
	int nsec3s_seen = 0;
	size_t i;
	struct ub_packed_rrset_key* s;

	/* validate the ANSWER section - this will be the CNAME (+DNAME) */
	for(i=0; i<chase_reply->an_numrrsets; i++) {
		s = chase_reply->rrsets[i];

		/* Check to see if the rrset is the result of a wildcard 
		 * expansion. If so, an additional check will need to be 
		 * made in the authority section. */
		if(!FUNC4(s, &wc, &wl)) {
			FUNC0(VERB_QUERY, "Cname response has "
				"inconsistent wildcard sigs:", s->rk.dname,
				FUNC2(s->rk.type), FUNC2(s->rk.rrset_class));
			chase_reply->security = sec_status_bogus;
			return;
		}
		
		/* Refuse wildcarded DNAMEs rfc 4597. 
		 * Do not follow a wildcarded DNAME because 
		 * its synthesized CNAME expansion is underdefined */
		if(qchase->qtype != LDNS_RR_TYPE_DNAME && 
			FUNC2(s->rk.type) == LDNS_RR_TYPE_DNAME && wc) {
			FUNC0(VERB_QUERY, "cannot validate a "
				"wildcarded DNAME:", s->rk.dname, 
				FUNC2(s->rk.type), FUNC2(s->rk.rrset_class));
			chase_reply->security = sec_status_bogus;
			return;
		}

		/* If we have found a CNAME, stop looking for one.
		 * The iterator has placed the CNAME chain in correct
		 * order. */
		if (FUNC2(s->rk.type) == LDNS_RR_TYPE_CNAME) {
			break;
		}
	}

	/* AUTHORITY section */
	for(i=chase_reply->an_numrrsets; i<chase_reply->an_numrrsets+
		chase_reply->ns_numrrsets; i++) {
		s = chase_reply->rrsets[i];

		/* If this is a positive wildcard response, and we have a 
		 * (just verified) NSEC record, try to use it to 1) prove 
		 * that qname doesn't exist and 2) that the correct wildcard 
		 * was used. */
		if(wc != NULL && FUNC2(s->rk.type) == LDNS_RR_TYPE_NSEC) {
			if(FUNC3(s, qchase, wc)) {
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
			FUNC5(VERB_ALGO, "wildcard CNAME response is "
				"insecure");
			chase_reply->security = sec_status_insecure;
			return;
		} else if(sec == sec_status_secure)
			wc_NSEC_ok = 1;
	}

	/* If after all this, we still haven't proven the positive wildcard
	 * response, fail. */
	if(wc != NULL && !wc_NSEC_ok) {
		FUNC5(VERB_QUERY, "CNAME response was wildcard "
			"expansion and did not prove original data "
			"did not exist");
		chase_reply->security = sec_status_bogus;
		return;
	}

	FUNC5(VERB_ALGO, "Successfully validated CNAME response");
	chase_reply->security = sec_status_secure;
}