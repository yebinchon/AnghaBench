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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; int security; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ VERB_ALGO ; 
 scalar_t__ VERB_QUERY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct query_info*,struct reply_info*) ; 
 int FUNC2 (struct module_env*,struct val_env*,struct ub_packed_rrset_key**,size_t,struct query_info*,struct key_entry_key*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct ub_packed_rrset_key*) ; 
 scalar_t__ FUNC4 (struct ub_packed_rrset_key*,struct query_info*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 scalar_t__ FUNC7 (struct ub_packed_rrset_key*,struct query_info*) ; 
 scalar_t__ FUNC8 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC11(struct module_env* env, struct val_env* ve,
	struct query_info* qchase, struct reply_info* chase_reply,
	struct key_entry_key* kkey)
{
	int nodata_valid_nsec = 0; /* If true, then NODATA has been proven.*/
	uint8_t* ce = NULL; /* for wildcard nodata responses. This is the 
				proven closest encloser. */
	uint8_t* wc = NULL; /* for wildcard nodata responses. wildcard nsec */
	int nxdomain_valid_nsec = 0; /* if true, nameerror has been proven */
	int nxdomain_valid_wnsec = 0;
	int nsec3s_seen = 0; /* nsec3s seen */
	struct ub_packed_rrset_key* s; 
	size_t i;
	uint8_t* nsec_ce; /* Used to find the NSEC with the longest ce */
	int ce_labs = 0;
	int prev_ce_labs = 0;

	/* the AUTHORITY section */
	for(i=chase_reply->an_numrrsets; i<chase_reply->an_numrrsets+
		chase_reply->ns_numrrsets; i++) {
		s = chase_reply->rrsets[i];

		/* If we encounter an NSEC record, try to use it to prove 
		 * NODATA. This needs to handle the ENT NODATA case. 
		 * Also try to prove NAMEERROR, and absence of a wildcard */
		if(FUNC5(s->rk.type) == LDNS_RR_TYPE_NSEC) {
			if(FUNC4(s, qchase, &wc)) {
				nodata_valid_nsec = 1;
				/* set wc encloser if wildcard applicable */
			} 
			if(FUNC8(s, qchase->qname)) {
				ce = FUNC3(qchase->qname, s);
				nxdomain_valid_nsec = 1;
			}
			nsec_ce = FUNC3(qchase->qname, s);
			ce_labs = FUNC0(nsec_ce);
			/* Use longest closest encloser to prove wildcard. */
			if(ce_labs > prev_ce_labs ||
			       (ce_labs == prev_ce_labs &&
				       nxdomain_valid_wnsec == 0)) {
			       if(FUNC9(s, qchase->qname,
				       qchase->qname_len))
				       nxdomain_valid_wnsec = 1;
			       else
				       nxdomain_valid_wnsec = 0;
			}
			prev_ce_labs = ce_labs;
			if(FUNC7(s, qchase)) {
				FUNC10(VERB_ALGO, "delegation is insecure");
				chase_reply->security = sec_status_insecure;
				return;
			}
		} else if(FUNC5(s->rk.type) == LDNS_RR_TYPE_NSEC3) {
			nsec3s_seen = 1;
		}
	}

	/* check to see if we have a wildcard NODATA proof. */

	/* The wildcard NODATA is 1 NSEC proving that qname does not exists 
	 * (and also proving what the closest encloser is), and 1 NSEC 
	 * showing the matching wildcard, which must be *.closest_encloser. */
	if(wc && !ce)
		nodata_valid_nsec = 0;
	else if(wc && ce) {
		if(FUNC6(wc, ce) != 0) {
			nodata_valid_nsec = 0;
		}
	}
	if(nxdomain_valid_nsec && !nxdomain_valid_wnsec) {
		/* name error is missing wildcard denial proof */
		nxdomain_valid_nsec = 0;
	}
	
	if(nodata_valid_nsec && nxdomain_valid_nsec) {
		FUNC10(VERB_QUERY, "CNAMEchain to noanswer proves that name "
			"exists and not exists, bogus");
		chase_reply->security = sec_status_bogus;
		return;
	}
	if(!nodata_valid_nsec && !nxdomain_valid_nsec && nsec3s_seen) {
		int nodata;
		enum sec_status sec = FUNC2(env, ve, 
			chase_reply->rrsets+chase_reply->an_numrrsets,
			chase_reply->ns_numrrsets, qchase, kkey, &nodata);
		if(sec == sec_status_insecure) {
			FUNC10(VERB_ALGO, "CNAMEchain to noanswer response "
				"is insecure");
			chase_reply->security = sec_status_insecure;
			return;
		} else if(sec == sec_status_secure) {
			if(nodata)
				nodata_valid_nsec = 1;
			else	nxdomain_valid_nsec = 1;
		}
	}

	if(!nodata_valid_nsec && !nxdomain_valid_nsec) {
		FUNC10(VERB_QUERY, "CNAMEchain to noanswer response failed "
			"to prove status with NSEC/NSEC3");
		if(verbosity >= VERB_ALGO)
			FUNC1("Failed CNAMEnoanswer", qchase, chase_reply);
		chase_reply->security = sec_status_bogus;
		return;
	}

	if(nodata_valid_nsec)
		FUNC10(VERB_ALGO, "successfully validated CNAME chain to a "
			"NODATA response.");
	else	FUNC10(VERB_ALGO, "successfully validated CNAME chain to a "
			"NAMEERROR response.");
	chase_reply->security = sec_status_secure;
}