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
struct query_info {int dummy; } ;
struct nsec3_filter {int dummy; } ;
struct module_env {int /*<<< orphan*/  scratch; } ;
struct ce_response {int /*<<< orphan*/  nc_rr; scalar_t__ nc_rrset; int /*<<< orphan*/  ce_len; int /*<<< orphan*/  ce; } ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,struct ub_packed_rrset_key**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,struct query_info*,int,struct ce_response*) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static enum sec_status
FUNC7(struct module_env* env, struct nsec3_filter* flt, 
	rbtree_type* ct, struct query_info* qinfo)
{
	struct ce_response ce;
	uint8_t* wc;
	size_t wclen;
	struct ub_packed_rrset_key* wc_rrset;
	int wc_rr;
	enum sec_status sec;

	/* First locate and prove the closest encloser to qname. We will 
	 * use the variant that fails if the closest encloser turns out 
	 * to be qname. */
	sec = FUNC5(env, flt, ct, qinfo, 1, &ce);
	if(sec != sec_status_secure) {
		if(sec == sec_status_bogus)
			FUNC6(VERB_ALGO, "nsec3 nameerror proof: failed "
				"to prove a closest encloser");
		else 	FUNC6(VERB_ALGO, "nsec3 nameerror proof: closest "
				"nsec3 is an insecure delegation");
		return sec;
	}
	FUNC2(VERB_ALGO, "nsec3 nameerror: proven ce=", ce.ce,0,0);

	/* At this point, we know that qname does not exist. Now we need 
	 * to prove that the wildcard does not exist. */
	FUNC1(ce.ce);
	wc = FUNC3(env->scratch, ce.ce, ce.ce_len, &wclen);
	if(!wc || !FUNC0(env, flt, ct, wc, wclen, 
		&wc_rrset, &wc_rr)) {
		FUNC6(VERB_ALGO, "nsec3 nameerror proof: could not prove "
			"that the applicable wildcard did not exist.");
		return sec_status_bogus;
	}

	if(ce.nc_rrset && FUNC4(ce.nc_rrset, ce.nc_rr)) {
		FUNC6(VERB_ALGO, "nsec3 nameerror proof: nc has optout");
		return sec_status_insecure;
	}
	return sec_status_secure;
}