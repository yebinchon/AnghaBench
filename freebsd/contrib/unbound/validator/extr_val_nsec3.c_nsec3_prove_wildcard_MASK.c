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
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct query_info {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct nsec3_filter {int /*<<< orphan*/  zone; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
struct ce_response {size_t ce_len; int /*<<< orphan*/  nc_rr; scalar_t__ nc_rrset; int /*<<< orphan*/ * ce; } ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;
typedef  int /*<<< orphan*/  ce ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct nsec3_filter*,struct ub_packed_rrset_key**,size_t,struct query_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct ce_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsec3_hash_cmp ; 
 scalar_t__ FUNC7 (struct val_env*,struct nsec3_filter*,struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

enum sec_status
FUNC10(struct module_env* env, struct val_env* ve,
        struct ub_packed_rrset_key** list, size_t num,
	struct query_info* qinfo, struct key_entry_key* kkey, uint8_t* wc)
{
	rbtree_type ct;
	struct nsec3_filter flt;
	struct ce_response ce;
	uint8_t* nc;
	size_t nc_len;
	size_t wclen;
	(void)FUNC0(wc, &wclen);

	if(!list || num == 0 || !kkey || !FUNC3(kkey))
		return sec_status_bogus; /* no valid NSEC3s, bogus */
	FUNC8(&ct, &nsec3_hash_cmp); /* init names-to-hash cache */
	FUNC1(&flt, list, num, qinfo); /* init RR iterator */
	if(!flt.zone)
		return sec_status_bogus; /* no RRs */
	if(FUNC7(ve, &flt, kkey))
		return sec_status_insecure; /* iteration count too high */

	/* We know what the (purported) closest encloser is by just 
	 * looking at the supposed generating wildcard. 
	 * The *. has already been removed from the wc name.
	 */
	FUNC4(&ce, 0, sizeof(ce));
	ce.ce = wc;
	ce.ce_len = wclen;

	/* Now we still need to prove that the original data did not exist.
	 * Otherwise, we need to show that the next closer name is covered. */
	FUNC5(qinfo->qname, qinfo->qname_len, ce.ce, &nc, &nc_len);
	if(!FUNC2(env, &flt, &ct, nc, nc_len, 
		&ce.nc_rrset, &ce.nc_rr)) {
		FUNC9(VERB_ALGO, "proveWildcard: did not find a covering "
			"NSEC3 that covered the next closer name.");
		return sec_status_bogus;
	}
	if(ce.nc_rrset && FUNC6(ce.nc_rrset, ce.nc_rr)) {
		FUNC9(VERB_ALGO, "proveWildcard: NSEC3 optout");
		return sec_status_insecure;
	}
	return sec_status_secure;
}