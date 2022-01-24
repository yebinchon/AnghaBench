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
typedef  int /*<<< orphan*/  uint32_t ;
struct val_env {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct trust_anchor {scalar_t__ ds_rrset; int /*<<< orphan*/  dclass; int /*<<< orphan*/  name; } ;
struct packed_rrset_data {size_t count; scalar_t__* rr_len; scalar_t__* rr_data; scalar_t__* rr_ttl; } ;
struct module_env {int dummy; } ;
struct autr_ta {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTR_STATE_VALID ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_DETAIL ; 
 struct autr_ta* FUNC0 (struct trust_anchor*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct trust_anchor*,scalar_t__,scalar_t__,scalar_t__,struct autr_ta**) ; 
 int /*<<< orphan*/  FUNC3 (struct trust_anchor*) ; 
 scalar_t__ FUNC4 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct module_env*,struct packed_rrset_data*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct autr_ta*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct trust_anchor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct autr_ta*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC15(struct module_env* env, struct val_env* ve, 
	struct trust_anchor* tp, struct ub_packed_rrset_key* dnskey_rrset, 
	int* changed)
{
	struct packed_rrset_data* dd = (struct packed_rrset_data*)
		dnskey_rrset->entry.data;
	size_t i;
	FUNC6(FUNC9(dnskey_rrset->rk.type) == LDNS_RR_TYPE_DNSKEY);
	FUNC3(tp);
	for(i=0; i<dd->count; i++) {
		struct autr_ta* ta = NULL;
		if(!FUNC11(FUNC9(dnskey_rrset->rk.type),
			dd->rr_data[i]+2, dd->rr_len[i]-2))
			continue;
		if(FUNC10(FUNC9(dnskey_rrset->rk.type),
			dd->rr_data[i]+2, dd->rr_len[i]-2)) {
			/* self-signed revoked keys already detected before,
			 * other revoked keys are not 'added' again */
			continue;
		}
		/* is a key of this type supported?. Note rr_list and
		 * packed_rrset are in the same order. */
		if(!FUNC1(dnskey_rrset, i)) {
			/* skip unknown algorithm key, it is useless to us */
			FUNC7(VERB_DETAIL, "trust point has "
				"unsupported algorithm at", 
				tp->name, LDNS_RR_TYPE_DNSKEY, tp->dclass);
			continue;
		}

		/* is it new? if revocation bit set, find the unrevoked key */
		if(!FUNC2(tp, FUNC9(dnskey_rrset->rk.type),
			dd->rr_data[i]+2, dd->rr_len[i]-2, &ta)) {
			return 0;
		}
		if(!ta) {
			ta = FUNC0(tp, (uint32_t)dd->rr_ttl[i],
				dd->rr_data[i]+2, dd->rr_len[i]-2);
			*changed = 1;
			/* first time seen, do we have DSes? if match: VALID */
			if(ta && tp->ds_rrset && FUNC4(env, ve,
				dnskey_rrset, i, tp->ds_rrset)) {
				FUNC14(ta, VERB_ALGO, "verified by DS");
				ta->s = AUTR_STATE_VALID;
			}
		}
		if(!ta) {
			return 0;
		}
		FUNC12(ta, 1);
		FUNC14(ta, VERB_ALGO, "in DNS response");
	}
	FUNC13(tp, FUNC8(env, dd), FUNC5(dnskey_rrset), changed);
	return 1;
}