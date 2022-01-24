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
struct val_env {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t count; } ;
struct module_env {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,struct ub_packed_rrset_key*,size_t,struct ub_packed_rrset_key*,size_t) ; 
 int FUNC4 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC5 (struct ub_packed_rrset_key*,size_t) ; 
 scalar_t__ FUNC6 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC8 (struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10(struct module_env* env, struct val_env* ve,
	struct ub_packed_rrset_key* dnskey_rrset, size_t key_idx,
	struct ub_packed_rrset_key* ds_rrset)
{
	struct packed_rrset_data* dd = (struct packed_rrset_data*)
	                ds_rrset->entry.data;
	size_t ds_idx, num = dd->count;
	int d = FUNC8(ds_rrset);
	char* reason = "";
	for(ds_idx=0; ds_idx<num; ds_idx++) {
		if(!FUNC2(ds_rrset, ds_idx) ||
			!FUNC7(ds_rrset, ds_idx) ||
			FUNC4(ds_rrset, ds_idx) != d)
			continue;
		if(FUNC5(ds_rrset, ds_idx)
		   != FUNC1(dnskey_rrset, key_idx)
		   || FUNC0(dnskey_rrset, key_idx)
		   != FUNC6(ds_rrset, ds_idx)) {
			continue;
		}
		if(!FUNC3(env, dnskey_rrset, key_idx,
			ds_rrset, ds_idx)) {
			FUNC9(VERB_ALGO, "DS match attempt failed");
			continue;
		}
		/* match of hash is sufficient for bootstrap of trust point */
		(void)reason;
		(void)ve;
		return 1;
		/* no need to check RRSIG, DS hash already matched with source
		if(dnskey_verify_rrset(env, ve, dnskey_rrset, 
			dnskey_rrset, key_idx, &reason) == sec_status_secure) {
			return 1;
		} else {
			verbose(VERB_ALGO, "DS match failed because the key "
				"does not verify the keyset: %s", reason);
		}
		*/
	}
	return 0;
}