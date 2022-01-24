#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; int /*<<< orphan*/ * qname; } ;
struct nsec3_filter {int dummy; } ;
struct module_env {int /*<<< orphan*/  scratch; } ;
struct ce_response {int /*<<< orphan*/  nc_rr; scalar_t__ nc_rrset; int /*<<< orphan*/  ce_len; scalar_t__ ce; } ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,struct ub_packed_rrset_key**,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ub_packed_rrset_key*,int,scalar_t__) ; 
 int FUNC6 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,struct query_info*,int,struct ce_response*) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static enum sec_status
FUNC8(struct module_env* env, struct nsec3_filter* flt, 
	rbtree_type* ct, struct query_info* qinfo)
{
	struct ce_response ce;
	uint8_t* wc;
	size_t wclen;
	struct ub_packed_rrset_key* rrset;
	int rr;
	enum sec_status sec;

	if(FUNC1(env, flt, ct, qinfo->qname, qinfo->qname_len, 
		&rrset, &rr)) {
		/* cases 1 and 2 */
		if(FUNC5(rrset, rr, qinfo->qtype)) {
			FUNC7(VERB_ALGO, "proveNodata: Matching NSEC3 "
				"proved that type existed, bogus");
			return sec_status_bogus;
		} else if(FUNC5(rrset, rr, LDNS_RR_TYPE_CNAME)) {
			FUNC7(VERB_ALGO, "proveNodata: Matching NSEC3 "
				"proved that a CNAME existed, bogus");
			return sec_status_bogus;
		}

		/* 
		 * If type DS: filter_init zone find already found a parent
		 *   zone, so this nsec3 is from a parent zone. 
		 *   o can be not a delegation (unusual query for normal name,
		 *   	no DS anyway, but we can verify that).
		 *   o can be a delegation (which is the usual DS check).
		 *   o may not have the SOA bit set (only the top of the
		 *   	zone, which must have been above the name, has that).
		 *   	Except for the root; which is checked by itself.
		 *
		 * If not type DS: matching nsec3 must not be a delegation.
		 */
		if(qinfo->qtype == LDNS_RR_TYPE_DS && qinfo->qname_len != 1 
			&& FUNC5(rrset, rr, LDNS_RR_TYPE_SOA) &&
			!FUNC0(qinfo->qname)) {
			FUNC7(VERB_ALGO, "proveNodata: apex NSEC3 "
				"abused for no DS proof, bogus");
			return sec_status_bogus;
		} else if(qinfo->qtype != LDNS_RR_TYPE_DS && 
			FUNC5(rrset, rr, LDNS_RR_TYPE_NS) &&
			!FUNC5(rrset, rr, LDNS_RR_TYPE_SOA)) {
			if(!FUNC5(rrset, rr, LDNS_RR_TYPE_DS)) {
				FUNC7(VERB_ALGO, "proveNodata: matching "
					"NSEC3 is insecure delegation");
				return sec_status_insecure;
			}
			FUNC7(VERB_ALGO, "proveNodata: matching "
				"NSEC3 is a delegation, bogus");
			return sec_status_bogus;
		}
		return sec_status_secure;
	}

	/* For cases 3 - 5, we need the proven closest encloser, and it 
	 * can't match qname. Although, at this point, we know that it 
	 * won't since we just checked that. */
	sec = FUNC6(env, flt, ct, qinfo, 1, &ce);
	if(sec == sec_status_bogus) {
		FUNC7(VERB_ALGO, "proveNodata: did not match qname, "
		          "nor found a proven closest encloser.");
		return sec_status_bogus;
	} else if(sec==sec_status_insecure && qinfo->qtype!=LDNS_RR_TYPE_DS){
		FUNC7(VERB_ALGO, "proveNodata: closest nsec3 is insecure "
		          "delegation.");
		return sec_status_insecure;
	}

	/* Case 3: removed */

	/* Case 4: */
	FUNC2(ce.ce);
	wc = FUNC3(env->scratch, ce.ce, ce.ce_len, &wclen);
	if(wc && FUNC1(env, flt, ct, wc, wclen, &rrset, &rr)) {
		/* found wildcard */
		if(FUNC5(rrset, rr, qinfo->qtype)) {
			FUNC7(VERB_ALGO, "nsec3 nodata proof: matching "
				"wildcard had qtype, bogus");
			return sec_status_bogus;
		} else if(FUNC5(rrset, rr, LDNS_RR_TYPE_CNAME)) {
			FUNC7(VERB_ALGO, "nsec3 nodata proof: matching "
				"wildcard had a CNAME, bogus");
			return sec_status_bogus;
		}
		if(qinfo->qtype == LDNS_RR_TYPE_DS && qinfo->qname_len != 1 
			&& FUNC5(rrset, rr, LDNS_RR_TYPE_SOA)) {
			FUNC7(VERB_ALGO, "nsec3 nodata proof: matching "
				"wildcard for no DS proof has a SOA, bogus");
			return sec_status_bogus;
		} else if(qinfo->qtype != LDNS_RR_TYPE_DS && 
			FUNC5(rrset, rr, LDNS_RR_TYPE_NS) &&
			!FUNC5(rrset, rr, LDNS_RR_TYPE_SOA)) {
			FUNC7(VERB_ALGO, "nsec3 nodata proof: matching "
				"wildcard is a delegation, bogus");
			return sec_status_bogus;
		}
		/* everything is peachy keen, except for optout spans */
		if(ce.nc_rrset && FUNC4(ce.nc_rrset, ce.nc_rr)) {
			FUNC7(VERB_ALGO, "nsec3 nodata proof: matching "
				"wildcard is in optout range, insecure");
			return sec_status_insecure;
		}
		return sec_status_secure;
	}

	/* Case 5: */
	/* Due to forwarders, cnames, and other collating effects, we
	 * can see the ordinary unsigned data from a zone beneath an
	 * insecure delegation under an optout here */
	if(!ce.nc_rrset) {
		FUNC7(VERB_ALGO, "nsec3 nodata proof: no next closer nsec3");
		return sec_status_bogus;
	}

	/* We need to make sure that the covering NSEC3 is opt-out. */
	FUNC2(ce.nc_rrset);
	if(!FUNC4(ce.nc_rrset, ce.nc_rr)) {
		if(qinfo->qtype == LDNS_RR_TYPE_DS)
		  FUNC7(VERB_ALGO, "proveNodata: covering NSEC3 was not "
			"opt-out in an opt-out DS NOERROR/NODATA case.");
		else FUNC7(VERB_ALGO, "proveNodata: could not find matching "
			"NSEC3, nor matching wildcard, nor optout NSEC3 "
			"-- no more options, bogus.");
		return sec_status_bogus;
	}
	/* RFC5155 section 9.2: if nc has optout then no AD flag set */
	return sec_status_insecure;
}