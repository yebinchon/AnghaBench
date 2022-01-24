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
struct module_qstate {int dummy; } ;
struct module_env {int /*<<< orphan*/ * now; } ;
struct algo_needs {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct algo_needs*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct algo_needs*) ; 
 scalar_t__ FUNC2 (struct algo_needs*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct algo_needs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct algo_needs*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct module_env*,struct val_env*,int /*<<< orphan*/ ,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,int /*<<< orphan*/ **,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 
 scalar_t__ FUNC7 (struct ub_packed_rrset_key*,size_t) ; 
 size_t FUNC8 (struct ub_packed_rrset_key*) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

enum sec_status 
FUNC10(struct module_env* env, struct val_env* ve,
	struct ub_packed_rrset_key* rrset, struct ub_packed_rrset_key* dnskey,
	uint8_t* sigalg, char** reason, sldns_pkt_section section, 
	struct module_qstate* qstate)
{
	enum sec_status sec;
	size_t i, num;
	rbtree_type* sortree = NULL;
	/* make sure that for all DNSKEY algorithms there are valid sigs */
	struct algo_needs needs;
	int alg;

	num = FUNC8(rrset);
	if(num == 0) {
		FUNC9(VERB_QUERY, "rrset failed to verify due to a lack of "
			"signatures");
		*reason = "no signatures";
		return sec_status_bogus;
	}

	if(sigalg) {
		FUNC0(&needs, sigalg);
		if(FUNC2(&needs) == 0) {
			FUNC9(VERB_QUERY, "zone has no known algorithms");
			*reason = "zone has no known algorithms";
			return sec_status_insecure;
		}
	}
	for(i=0; i<num; i++) {
		sec = FUNC6(env, ve, *env->now, rrset, 
			dnskey, i, &sortree, reason, section, qstate);
		/* see which algorithm has been fixed up */
		if(sec == sec_status_secure) {
			if(!sigalg)
				return sec; /* done! */
			else if(FUNC5(&needs,
				(uint8_t)FUNC7(rrset, i)))
				return sec; /* done! */
		} else if(sigalg && sec == sec_status_bogus) {
			FUNC4(&needs,
				(uint8_t)FUNC7(rrset, i));
		}
	}
	if(sigalg && (alg=FUNC1(&needs)) != 0) {
		FUNC9(VERB_ALGO, "rrset failed to verify: "
			"no valid signatures for %d algorithms",
			(int)FUNC2(&needs));
		FUNC3(env, alg, reason, "no signatures");
	} else {
		FUNC9(VERB_ALGO, "rrset failed to verify: "
			"no valid signatures");
	}
	return sec_status_bogus;
}