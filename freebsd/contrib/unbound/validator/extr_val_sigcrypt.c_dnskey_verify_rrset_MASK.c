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
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {int /*<<< orphan*/ * now; int /*<<< orphan*/  scratch_buffer; int /*<<< orphan*/  scratch; } ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ FUNC0 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct val_env*,int /*<<< orphan*/ ,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,size_t,int /*<<< orphan*/ **,int*,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 
 int FUNC3 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC4 (struct ub_packed_rrset_key*,size_t) ; 
 size_t FUNC5 (struct ub_packed_rrset_key*) ; 
 int sec_status_bogus ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

enum sec_status 
FUNC7(struct module_env* env, struct val_env* ve,
        struct ub_packed_rrset_key* rrset, struct ub_packed_rrset_key* dnskey,
	size_t dnskey_idx, char** reason, sldns_pkt_section section,
	struct module_qstate* qstate)
{
	enum sec_status sec;
	size_t i, num, numchecked = 0;
	rbtree_type* sortree = NULL;
	int buf_canon = 0;
	uint16_t tag = FUNC0(dnskey, dnskey_idx);
	int algo = FUNC1(dnskey, dnskey_idx);

	num = FUNC5(rrset);
	if(num == 0) {
		FUNC6(VERB_QUERY, "rrset failed to verify due to a lack of "
			"signatures");
		*reason = "no signatures";
		return sec_status_bogus;
	}
	for(i=0; i<num; i++) {
		/* see if sig matches keytag and algo */
		if(algo != FUNC3(rrset, i) ||
			tag != FUNC4(rrset, i))
			continue;
		buf_canon = 0;
		sec = FUNC2(env->scratch, 
			env->scratch_buffer, ve, *env->now, rrset, 
			dnskey, dnskey_idx, i, &sortree, &buf_canon, reason,
			section, qstate);
		if(sec == sec_status_secure)
			return sec;
		numchecked ++;
	}
	FUNC6(VERB_ALGO, "rrset failed to verify: all signatures are bogus");
	if(!numchecked) *reason = "signature missing";
	return sec_status_bogus;
}