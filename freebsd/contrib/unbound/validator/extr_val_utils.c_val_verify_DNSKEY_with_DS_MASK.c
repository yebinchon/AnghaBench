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
struct TYPE_2__ {scalar_t__ dname_len; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct algo_needs {int dummy; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct algo_needs*,struct ub_packed_rrset_key*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct algo_needs*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_env*,int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct algo_needs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct algo_needs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC6 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC7 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (struct ub_packed_rrset_key*) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int FUNC11 (struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,struct module_qstate*) ; 

enum sec_status 
FUNC14(struct module_env* env, struct val_env* ve,
	struct ub_packed_rrset_key* dnskey_rrset,
	struct ub_packed_rrset_key* ds_rrset, uint8_t* sigalg, char** reason,
	struct module_qstate* qstate)
{
	/* as long as this is false, we can consider this DS rrset to be
	 * equivalent to no DS rrset. */
	int has_useful_ds = 0, digest_algo, alg;
	struct algo_needs needs;
	size_t i, num;
	enum sec_status sec;

	if(dnskey_rrset->rk.dname_len != ds_rrset->rk.dname_len ||
		FUNC9(dnskey_rrset->rk.dname, ds_rrset->rk.dname)
		!= 0) {
		FUNC12(VERB_QUERY, "DNSKEY RRset did not match DS RRset "
			"by name");
		*reason = "DNSKEY RRset did not match DS RRset by name";
		return sec_status_bogus;
	}

	if(sigalg) {
		/* harden against algo downgrade is enabled */
		digest_algo = FUNC11(ds_rrset);
		FUNC0(&needs, ds_rrset, digest_algo, sigalg);
	} else {
		/* accept any key algo, any digest algo */
		digest_algo = -1;
	}
	num = FUNC10(ds_rrset);
	for(i=0; i<num; i++) {
		/* Check to see if we can understand this DS. 
		 * And check it is the strongest digest */
		if(!FUNC5(ds_rrset, i) ||
			!FUNC8(ds_rrset, i) ||
			(sigalg && (FUNC6(ds_rrset, i) != digest_algo))) {
			continue;
		}

		/* Once we see a single DS with a known digestID and 
		 * algorithm, we cannot return INSECURE (with a 
		 * "null" KeyEntry). */
		has_useful_ds = 1;

		sec = FUNC13(env, ve, dnskey_rrset, 
			ds_rrset, i, reason, qstate);
		if(sec == sec_status_secure) {
			if(!sigalg || FUNC4(&needs,
				(uint8_t)FUNC7(ds_rrset, i))) {
				FUNC12(VERB_ALGO, "DS matched DNSKEY.");
				return sec_status_secure;
			}
		} else if(sigalg && sec == sec_status_bogus) {
			FUNC3(&needs,
				(uint8_t)FUNC7(ds_rrset, i));
		}
	}

	/* None of the DS's worked out. */

	/* If no DSs were understandable, then this is OK. */
	if(!has_useful_ds) {
		FUNC12(VERB_ALGO, "No usable DS records were found -- "
			"treating as insecure.");
		return sec_status_insecure;
	}
	/* If any were understandable, then it is bad. */
	FUNC12(VERB_QUERY, "Failed to match any usable DS to a DNSKEY.");
	if(sigalg && (alg=FUNC1(&needs)) != 0) {
		FUNC2(env, alg, reason, "missing verification of "
			"DNSKEY signature");
	}
	return sec_status_bogus;
}