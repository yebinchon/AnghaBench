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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rbtree_type {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {int /*<<< orphan*/  scratch_buffer; int /*<<< orphan*/  scratch; } ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC2 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct val_env*,int /*<<< orphan*/ ,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,size_t,struct rbtree_type**,int*,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 
 size_t FUNC4 (struct ub_packed_rrset_key*) ; 
 int FUNC5 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC6 (struct ub_packed_rrset_key*,size_t) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

enum sec_status 
FUNC8(struct module_env* env, struct val_env* ve, 
	time_t now, struct ub_packed_rrset_key* rrset, 
	struct ub_packed_rrset_key* dnskey, size_t sig_idx, 
	struct rbtree_type** sortree, char** reason, sldns_pkt_section section,
	struct module_qstate* qstate)
{
	/* find matching keys and check them */
	enum sec_status sec = sec_status_bogus;
	uint16_t tag = FUNC6(rrset, sig_idx);
	int algo = FUNC5(rrset, sig_idx);
	size_t i, num = FUNC4(dnskey);
	size_t numchecked = 0;
	int buf_canon = 0;
	FUNC7(VERB_ALGO, "verify sig %d %d", (int)tag, algo);
	if(!FUNC0(algo)) {
		FUNC7(VERB_QUERY, "verify sig: unknown algorithm");
		return sec_status_insecure;
	}
	
	for(i=0; i<num; i++) {
		/* see if key matches keytag and algo */
		if(algo != FUNC2(dnskey, i) ||
			tag != FUNC1(dnskey, i))
			continue;
		numchecked ++;

		/* see if key verifies */
		sec = FUNC3(env->scratch, 
			env->scratch_buffer, ve, now, rrset, dnskey, i, 
			sig_idx, sortree, &buf_canon, reason, section, qstate);
		if(sec == sec_status_secure)
			return sec;
	}
	if(numchecked == 0) {
		*reason = "signatures from unknown keys";
		FUNC7(VERB_QUERY, "verify: could not find appropriate key");
		return sec_status_bogus;
	}
	return sec_status_bogus;
}