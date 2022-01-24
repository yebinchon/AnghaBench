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
struct query_info {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct nsec3_filter {int dummy; } ;
struct module_env {int dummy; } ;
struct ce_response {int /*<<< orphan*/  nc_rr; int /*<<< orphan*/  nc_rrset; int /*<<< orphan*/  ce; int /*<<< orphan*/  ce_rr; int /*<<< orphan*/  ce_rrset; } ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ce_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,struct query_info*,struct ce_response*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static enum sec_status
FUNC8(struct module_env* env, struct nsec3_filter* flt, 
	rbtree_type* ct, struct query_info* qinfo, int prove_does_not_exist,
	struct ce_response* ce)
{
	uint8_t* nc;
	size_t nc_len;
	/* robust: clean out ce, in case it gets abused later */
	FUNC2(ce, 0, sizeof(*ce));

	if(!FUNC4(env, flt, ct, qinfo, ce)) {
		FUNC7(VERB_ALGO, "nsec3 proveClosestEncloser: could "
			"not find a candidate for the closest encloser.");
		return sec_status_bogus;
	}
	FUNC1(VERB_ALGO, "ce candidate", ce->ce, 0, 0);

	if(FUNC6(ce->ce, qinfo->qname) == 0) {
		if(prove_does_not_exist) {
			FUNC7(VERB_ALGO, "nsec3 proveClosestEncloser: "
				"proved that qname existed, bad");
			return sec_status_bogus;
		}
		/* otherwise, we need to nothing else to prove that qname 
		 * is its own closest encloser. */
		return sec_status_secure;
	}

	/* If the closest encloser is actually a delegation, then the 
	 * response should have been a referral. If it is a DNAME, then 
	 * it should have been a DNAME response. */
	if(FUNC5(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_NS) &&
		!FUNC5(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_SOA)) {
		if(!FUNC5(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_DS)) {
			FUNC7(VERB_ALGO, "nsec3 proveClosestEncloser: "
				"closest encloser is insecure delegation");
			return sec_status_insecure;
		}
		FUNC7(VERB_ALGO, "nsec3 proveClosestEncloser: closest "
			"encloser was a delegation, bad");
		return sec_status_bogus;
	}
	if(FUNC5(ce->ce_rrset, ce->ce_rr, LDNS_RR_TYPE_DNAME)) {
		FUNC7(VERB_ALGO, "nsec3 proveClosestEncloser: closest "
			"encloser was a DNAME, bad");
		return sec_status_bogus;
	}
	
	/* Otherwise, we need to show that the next closer name is covered. */
	FUNC3(qinfo->qname, qinfo->qname_len, ce->ce, &nc, &nc_len);
	if(!FUNC0(env, flt, ct, nc, nc_len, 
		&ce->nc_rrset, &ce->nc_rr)) {
		FUNC7(VERB_ALGO, "nsec3: Could not find proof that the "
		          "candidate encloser was the closest encloser");
		return sec_status_bogus;
	}
	return sec_status_secure;
}