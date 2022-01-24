#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct val_env {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct trust_anchor {int dummy; } ;
struct packed_rrset_data {size_t count; scalar_t__* rr_len; scalar_t__* rr_data; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct autr_ta {int /*<<< orphan*/  revoked; int /*<<< orphan*/  dname_len; int /*<<< orphan*/  rr_len; int /*<<< orphan*/  rr; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int FUNC0 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct module_env*,struct autr_ta*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct trust_anchor*,scalar_t__,scalar_t__,scalar_t__,struct autr_ta**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,size_t,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC9 (struct autr_ta*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct autr_ta*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC14(struct module_env* env, struct val_env* ve,
	struct trust_anchor* tp, struct ub_packed_rrset_key* dnskey_rrset,
	int* changed, struct module_qstate* qstate)
{
	struct packed_rrset_data* dd = (struct packed_rrset_data*)
		dnskey_rrset->entry.data;
	size_t i;
	FUNC3(FUNC5(dnskey_rrset->rk.type) == LDNS_RR_TYPE_DNSKEY);
	for(i=0; i<dd->count; i++) {
		struct autr_ta* ta = NULL;
		if(!FUNC7(FUNC5(dnskey_rrset->rk.type),
			dd->rr_data[i]+2, dd->rr_len[i]-2) ||
			!FUNC6(FUNC5(dnskey_rrset->rk.type),
			dd->rr_data[i]+2, dd->rr_len[i]-2))
			continue; /* not a revoked KSK */
		if(!FUNC2(tp, FUNC5(dnskey_rrset->rk.type),
			dd->rr_data[i]+2, dd->rr_len[i]-2, &ta)) {
			FUNC4("malloc failure");
			continue; /* malloc fail in compare*/
		}
		if(!ta)
			continue; /* key not found */
		if(FUNC8(env, ve, dnskey_rrset, i, qstate)) {
			/* checked if there is an rrsig signed by this key. */
			/* same keytag, but stored can be revoked already, so 
			 * compare keytags, with +0 or +128(REVOKE flag) */
			FUNC3(FUNC0(dnskey_rrset, i)-128 ==
				FUNC10(FUNC11(
				ta->rr, ta->rr_len, ta->dname_len),
				FUNC12(ta->rr, ta->rr_len,
				ta->dname_len)) ||
				FUNC0(dnskey_rrset, i) ==
				FUNC10(FUNC11(
				ta->rr, ta->rr_len, ta->dname_len),
				FUNC12(ta->rr, ta->rr_len,
				ta->dname_len))); /* checks conversion*/
			FUNC13(ta, VERB_ALGO, "is self-signed revoked");
			if(!ta->revoked) 
				*changed = 1;
			FUNC9(ta, 1);
			FUNC1(env, ta, changed);
		}
	}
}