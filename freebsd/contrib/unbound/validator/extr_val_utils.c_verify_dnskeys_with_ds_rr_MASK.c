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
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*,scalar_t__,char**,char*) ; 
 scalar_t__ FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC2 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC3 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,size_t,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_env*,struct ub_packed_rrset_key*,size_t,struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC5 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC6 (struct ub_packed_rrset_key*,size_t) ; 
 size_t FUNC7 (struct ub_packed_rrset_key*) ; 
 int sec_status_bogus ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static enum sec_status
FUNC9(struct module_env* env, struct val_env* ve, 
	struct ub_packed_rrset_key* dnskey_rrset, 
        struct ub_packed_rrset_key* ds_rrset, size_t ds_idx, char** reason,
	struct module_qstate* qstate)
{
	enum sec_status sec = sec_status_bogus;
	size_t i, num, numchecked = 0, numhashok = 0;
	num = FUNC7(dnskey_rrset);
	for(i=0; i<num; i++) {
		/* Skip DNSKEYs that don't match the basic criteria. */
		if(FUNC5(ds_rrset, ds_idx) 
		   != FUNC2(dnskey_rrset, i)
		   || FUNC1(dnskey_rrset, i)
		   != FUNC6(ds_rrset, ds_idx)) {
			continue;
		}
		numchecked++;
		FUNC8(VERB_ALGO, "attempt DS match algo %d keytag %d",
			FUNC5(ds_rrset, ds_idx),
			FUNC6(ds_rrset, ds_idx));

		/* Convert the candidate DNSKEY into a hash using the 
		 * same DS hash algorithm. */
		if(!FUNC4(env, dnskey_rrset, i, ds_rrset, 
			ds_idx)) {
			FUNC8(VERB_ALGO, "DS match attempt failed");
			continue;
		}
		numhashok++;
		FUNC8(VERB_ALGO, "DS match digest ok, trying signature");

		/* Otherwise, we have a match! Make sure that the DNSKEY 
		 * verifies *with this key*  */
		sec = FUNC3(env, ve, dnskey_rrset, 
			dnskey_rrset, i, reason, LDNS_SECTION_ANSWER, qstate);
		if(sec == sec_status_secure) {
			return sec;
		}
		/* If it didn't validate with the DNSKEY, try the next one! */
	}
	if(numchecked == 0)
		FUNC0(env, FUNC5(ds_rrset, ds_idx),
			reason, "no keys have a DS");
	else if(numhashok == 0)
		*reason = "DS hash mismatches key";
	else if(!*reason)
		*reason = "keyset not secured by DNSKEY that matches DS";
	return sec_status_bogus;
}