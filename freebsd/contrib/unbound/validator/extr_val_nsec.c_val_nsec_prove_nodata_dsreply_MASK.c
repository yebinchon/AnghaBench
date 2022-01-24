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
typedef  int /*<<< orphan*/  time_t ;
struct val_env {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {int /*<<< orphan*/  qname; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname_len; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct ub_packed_rrset_key*) ; 
 scalar_t__ FUNC3 (struct ub_packed_rrset_key*,struct query_info*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct key_entry_key*,char**,struct module_qstate*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ub_packed_rrset_key* FUNC6 (struct reply_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ub_packed_rrset_key*) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int sec_status_unchecked ; 
 int /*<<< orphan*/  FUNC8 (struct ub_packed_rrset_key*) ; 
 scalar_t__ FUNC9 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ub_packed_rrset_key*,struct query_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

enum sec_status 
FUNC12(struct module_env* env, struct val_env* ve, 
	struct query_info* qinfo, struct reply_info* rep, 
	struct key_entry_key* kkey, time_t* proof_ttl, char** reason,
	struct module_qstate* qstate)
{
	struct ub_packed_rrset_key* nsec = FUNC6(
		rep, qinfo->qname, qinfo->qname_len, LDNS_RR_TYPE_NSEC, 
		qinfo->qclass);
	enum sec_status sec;
	size_t i;
	uint8_t* wc = NULL, *ce = NULL;
	int valid_nsec = 0;
	struct ub_packed_rrset_key* wc_nsec = NULL;

	/* If we have a NSEC at the same name, it must prove one 
	 * of two things
	 * --
	 * 1) this is a delegation point and there is no DS
	 * 2) this is not a delegation point */
	if(nsec) {
		if(!FUNC4(env, ve, nsec, kkey, reason, qstate)) {
			FUNC11(VERB_ALGO, "NSEC RRset for the "
				"referral did not verify.");
			return sec_status_bogus;
		}
		sec = FUNC10(nsec, qinfo);
		if(sec == sec_status_bogus) {
			/* something was wrong. */
			*reason = "NSEC does not prove absence of DS";
			return sec;
		} else if(sec == sec_status_insecure) {
			/* this wasn't a delegation point. */
			return sec;
		} else if(sec == sec_status_secure) {
			/* this proved no DS. */
			*proof_ttl = FUNC8(nsec);
			return sec;
		}
		/* if unchecked, fall through to next proof */
	}

	/* Otherwise, there is no NSEC at qname. This could be an ENT. 
	 * (ENT=empty non terminal). If not, this is broken. */
	
	/* verify NSEC rrsets in auth section */
	for(i=rep->an_numrrsets; i < rep->an_numrrsets+rep->ns_numrrsets; 
		i++) {
		if(rep->rrsets[i]->rk.type != FUNC1(LDNS_RR_TYPE_NSEC))
			continue;
		if(!FUNC4(env, ve, rep->rrsets[i], kkey, reason,
			qstate)) {
			FUNC11(VERB_ALGO, "NSEC for empty non-terminal "
				"did not verify.");
			return sec_status_bogus;
		}
		if(FUNC3(rep->rrsets[i], qinfo, &wc)) {
			FUNC11(VERB_ALGO, "NSEC for empty non-terminal "
				"proved no DS.");
			*proof_ttl = FUNC7(rep->rrsets[i]);
			if(wc && FUNC0(rep->rrsets[i]->rk.dname)) 
				wc_nsec = rep->rrsets[i];
			valid_nsec = 1;
		}
		if(FUNC9(rep->rrsets[i], qinfo->qname)) {
			ce = FUNC2(qinfo->qname, 
				rep->rrsets[i]);
		}
	}
	if(wc && !ce)
		valid_nsec = 0;
	else if(wc && ce) {
		/* ce and wc must match */
		if(FUNC5(wc, ce) != 0) 
			valid_nsec = 0;
		else if(!wc_nsec)
			valid_nsec = 0;
	}
	if(valid_nsec) {
		if(wc) {
			/* check if this is a delegation */
			*reason = "NSEC for wildcard does not prove absence of DS";
			return FUNC10(wc_nsec, qinfo);
		}
		/* valid nsec proves empty nonterminal */
		return sec_status_insecure;
	}

	/* NSEC proof did not conclusively point to DS or no DS */
	return sec_status_unchecked;
}