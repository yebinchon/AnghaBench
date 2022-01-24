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
typedef  int /*<<< orphan*/  needs ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct algo_needs*,struct ub_packed_rrset_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct algo_needs*,struct ub_packed_rrset_key*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct algo_needs*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct algo_needs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct algo_needs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC7 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC8 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC9 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC10 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC11 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct algo_needs*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC15 (struct ub_packed_rrset_key*) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int FUNC16 (struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int FUNC18 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,struct module_qstate*) ; 

enum sec_status 
FUNC19(struct module_env* env, struct val_env* ve,
	struct ub_packed_rrset_key* dnskey_rrset,
	struct ub_packed_rrset_key* ta_ds,
	struct ub_packed_rrset_key* ta_dnskey, uint8_t* sigalg, char** reason,
	struct module_qstate* qstate)
{
	/* as long as this is false, we can consider this anchor to be
	 * equivalent to no anchor. */
	int has_useful_ta = 0, digest_algo = 0, alg;
	struct algo_needs needs;
	size_t i, num;
	enum sec_status sec;

	if(ta_ds && (dnskey_rrset->rk.dname_len != ta_ds->rk.dname_len ||
		FUNC14(dnskey_rrset->rk.dname, ta_ds->rk.dname)
		!= 0)) {
		FUNC17(VERB_QUERY, "DNSKEY RRset did not match DS RRset "
			"by name");
		*reason = "DNSKEY RRset did not match DS RRset by name";
		return sec_status_bogus;
	}
	if(ta_dnskey && (dnskey_rrset->rk.dname_len != ta_dnskey->rk.dname_len
	     || FUNC14(dnskey_rrset->rk.dname, ta_dnskey->rk.dname)
		!= 0)) {
		FUNC17(VERB_QUERY, "DNSKEY RRset did not match anchor RRset "
			"by name");
		*reason = "DNSKEY RRset did not match anchor RRset by name";
		return sec_status_bogus;
	}

	if(ta_ds)
		digest_algo = FUNC16(ta_ds);
	if(sigalg) {
		if(ta_ds)
			FUNC1(&needs, ta_ds, digest_algo, sigalg);
		else	FUNC13(&needs, 0, sizeof(needs));
		if(ta_dnskey)
			FUNC0(&needs, ta_dnskey, sigalg);
	}
	if(ta_ds) {
	    num = FUNC15(ta_ds);
	    for(i=0; i<num; i++) {
		/* Check to see if we can understand this DS. 
		 * And check it is the strongest digest */
		if(!FUNC9(ta_ds, i) ||
			!FUNC12(ta_ds, i) ||
			FUNC10(ta_ds, i) != digest_algo)
			continue;

		/* Once we see a single DS with a known digestID and 
		 * algorithm, we cannot return INSECURE (with a 
		 * "null" KeyEntry). */
		has_useful_ta = 1;

		sec = FUNC18(env, ve, dnskey_rrset, 
			ta_ds, i, reason, qstate);
		if(sec == sec_status_secure) {
			if(!sigalg || FUNC5(&needs,
				(uint8_t)FUNC11(ta_ds, i))) {
				FUNC17(VERB_ALGO, "DS matched DNSKEY.");
				return sec_status_secure;
			}
		} else if(sigalg && sec == sec_status_bogus) {
			FUNC4(&needs,
				(uint8_t)FUNC11(ta_ds, i));
		}
	    }
	}

	/* None of the DS's worked out: check the DNSKEYs. */
	if(ta_dnskey) {
	    num = FUNC15(ta_dnskey);
	    for(i=0; i<num; i++) {
		/* Check to see if we can understand this DNSKEY */
		if(!FUNC6(ta_dnskey, i))
			continue;

		/* we saw a useful TA */
		has_useful_ta = 1;

		sec = FUNC8(env, ve, dnskey_rrset,
			ta_dnskey, i, reason, LDNS_SECTION_ANSWER, qstate);
		if(sec == sec_status_secure) {
			if(!sigalg || FUNC5(&needs,
				(uint8_t)FUNC7(ta_dnskey, i))) {
				FUNC17(VERB_ALGO, "anchor matched DNSKEY.");
				return sec_status_secure;
			}
		} else if(sigalg && sec == sec_status_bogus) {
			FUNC4(&needs,
				(uint8_t)FUNC7(ta_dnskey, i));
		}
	    }
	}

	/* If no DSs were understandable, then this is OK. */
	if(!has_useful_ta) {
		FUNC17(VERB_ALGO, "No usable trust anchors were found -- "
			"treating as insecure.");
		return sec_status_insecure;
	}
	/* If any were understandable, then it is bad. */
	FUNC17(VERB_QUERY, "Failed to match any usable anchor to a DNSKEY.");
	if(sigalg && (alg=FUNC2(&needs)) != 0) {
		FUNC3(env, alg, reason, "missing verification of "
			"DNSKEY signature");
	}
	return sec_status_bogus;
}