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
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {scalar_t__ qtype; int qname_len; int /*<<< orphan*/  qname; } ;
struct nsec3_filter {int /*<<< orphan*/  zone; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
struct ce_response {int nc_rrset; int /*<<< orphan*/  nc_rr; } ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct nsec3_filter*,struct ub_packed_rrset_key**,size_t,struct query_info*) ; 
 scalar_t__ FUNC1 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct ub_packed_rrset_key**,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,struct val_env*,struct ub_packed_rrset_key**,size_t,struct key_entry_key*,char**,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ub_packed_rrset_key*,int,scalar_t__) ; 
 int /*<<< orphan*/  nsec3_hash_cmp ; 
 scalar_t__ FUNC7 (struct val_env*,struct nsec3_filter*,struct key_entry_key*) ; 
 int FUNC8 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,struct query_info*,int,struct ce_response*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int sec_status_bogus ; 
 int sec_status_indeterminate ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

enum sec_status
FUNC11(struct module_env* env, struct val_env* ve,
	struct ub_packed_rrset_key** list, size_t num,
	struct query_info* qinfo, struct key_entry_key* kkey, char** reason,
	struct module_qstate* qstate)
{
	rbtree_type ct;
	struct nsec3_filter flt;
	struct ce_response ce;
	struct ub_packed_rrset_key* rrset;
	int rr;
	FUNC4(qinfo->qtype == LDNS_RR_TYPE_DS);

	if(!list || num == 0 || !kkey || !FUNC2(kkey)) {
		*reason = "no valid NSEC3s";
		return sec_status_bogus; /* no valid NSEC3s, bogus */
	}
	if(!FUNC3(env, ve, list, num, kkey, reason, qstate))
		return sec_status_bogus; /* not all NSEC3 records secure */
	FUNC9(&ct, &nsec3_hash_cmp); /* init names-to-hash cache */
	FUNC0(&flt, list, num, qinfo); /* init RR iterator */
	if(!flt.zone) {
		*reason = "no NSEC3 records";
		return sec_status_bogus; /* no RRs */
	}
	if(FUNC7(ve, &flt, kkey))
		return sec_status_insecure; /* iteration count too high */

	/* Look for a matching NSEC3 to qname -- this is the normal 
	 * NODATA case. */
	if(FUNC1(env, &flt, &ct, qinfo->qname, qinfo->qname_len, 
		&rrset, &rr)) {
		/* If the matching NSEC3 has the SOA bit set, it is from 
		 * the wrong zone (the child instead of the parent). If 
		 * it has the DS bit set, then we were lied to. */
		if(FUNC6(rrset, rr, LDNS_RR_TYPE_SOA) && 
			qinfo->qname_len != 1) {
			FUNC10(VERB_ALGO, "nsec3 provenods: NSEC3 is from"
				" child zone, bogus");
			*reason = "NSEC3 from child zone";
			return sec_status_bogus;
		} else if(FUNC6(rrset, rr, LDNS_RR_TYPE_DS)) {
			FUNC10(VERB_ALGO, "nsec3 provenods: NSEC3 has qtype"
				" DS, bogus");
			*reason = "NSEC3 has DS in bitmap";
			return sec_status_bogus;
		}
		/* If the NSEC3 RR doesn't have the NS bit set, then 
		 * this wasn't a delegation point. */
		if(!FUNC6(rrset, rr, LDNS_RR_TYPE_NS))
			return sec_status_indeterminate;
		/* Otherwise, this proves no DS. */
		return sec_status_secure;
	}

	/* Otherwise, we are probably in the opt-out case. */
	if(FUNC8(env, &flt, &ct, qinfo, 1, &ce)
		!= sec_status_secure) {
		/* an insecure delegation *above* the qname does not prove
		 * anything about this qname exactly, and bogus is bogus */
		FUNC10(VERB_ALGO, "nsec3 provenods: did not match qname, "
		          "nor found a proven closest encloser.");
		*reason = "no NSEC3 closest encloser";
		return sec_status_bogus;
	}

	/* robust extra check */
	if(!ce.nc_rrset) {
		FUNC10(VERB_ALGO, "nsec3 nods proof: no next closer nsec3");
		*reason = "no NSEC3 next closer";
		return sec_status_bogus;
	}

	/* we had the closest encloser proof, then we need to check that the
	 * covering NSEC3 was opt-out -- the proveClosestEncloser step already
	 * checked to see if the closest encloser was a delegation or DNAME.
	 */
	FUNC4(ce.nc_rrset);
	if(!FUNC5(ce.nc_rrset, ce.nc_rr)) {
		FUNC10(VERB_ALGO, "nsec3 provenods: covering NSEC3 was not "
			"opt-out in an opt-out DS NOERROR/NODATA case.");
		*reason = "covering NSEC3 was not opt-out in an opt-out "
			"DS NOERROR/NODATA case";
		return sec_status_bogus;
	}
	/* RFC5155 section 9.2: if nc has optout then no AD flag set */
	return sec_status_insecure;
}