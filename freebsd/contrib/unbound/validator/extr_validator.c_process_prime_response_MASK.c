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
struct TYPE_3__ {int /*<<< orphan*/  qclass; } ;
struct val_qstate {scalar_t__ restart_count; void* state; int /*<<< orphan*/ * key_entry; int /*<<< orphan*/ * chain_blacklist; int /*<<< orphan*/ * trust_anchor_name; TYPE_1__ qchase; int /*<<< orphan*/  trust_anchor_len; int /*<<< orphan*/  trust_anchor_labs; } ;
struct val_env {int /*<<< orphan*/  kcache; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct trust_anchor {int /*<<< orphan*/  name; int /*<<< orphan*/  lock; scalar_t__ autr; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelen; } ;
struct sock_list {int dummy; } ;
struct module_qstate {int /*<<< orphan*/ * errinf; int /*<<< orphan*/  region; TYPE_2__* env; } ;
struct dns_msg {int /*<<< orphan*/  rep; } ;
struct TYPE_4__ {int /*<<< orphan*/  anchors; scalar_t__* modinfo; } ;

/* Variables and functions */
 int LDNS_RCODE_NOERROR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 void* VAL_INIT_STATE ; 
 scalar_t__ VAL_MAX_RESTART_COUNT ; 
 void* VAL_VALIDATE_STATE ; 
 struct trust_anchor* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct val_env*,struct trust_anchor*,struct ub_packed_rrset_key*,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct module_qstate*,struct sock_list*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct module_qstate*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct ub_packed_rrset_key*,struct trust_anchor*,struct module_qstate*,int) ; 
 struct ub_packed_rrset_key* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,struct sock_list*,int) ; 

__attribute__((used)) static void
FUNC11(struct module_qstate* qstate, struct val_qstate* vq,
	int id, int rcode, struct dns_msg* msg, struct sock_list* origin)
{
	struct val_env* ve = (struct val_env*)qstate->env->modinfo[id];
	struct ub_packed_rrset_key* dnskey_rrset = NULL;
	struct trust_anchor* ta = FUNC0(qstate->env->anchors, 
		vq->trust_anchor_name, vq->trust_anchor_labs,
		vq->trust_anchor_len, vq->qchase.qclass);
	if(!ta) {
		/* trust anchor revoked, restart with less anchors */
		vq->state = VAL_INIT_STATE;
		if(!vq->trust_anchor_name)
			vq->state = VAL_VALIDATE_STATE; /* break a loop */
		vq->trust_anchor_name = NULL;
		return;
	}
	/* Fetch and validate the keyEntry that corresponds to the 
	 * current trust anchor. */
	if(rcode == LDNS_RCODE_NOERROR) {
		dnskey_rrset = FUNC9(msg->rep,
			ta->name, ta->namelen, LDNS_RR_TYPE_DNSKEY,
			ta->dclass);
	}

	if(ta->autr) {
		if(!FUNC1(qstate->env, ve, ta, dnskey_rrset,
			qstate)) {
			/* trust anchor revoked, restart with less anchors */
			vq->state = VAL_INIT_STATE;
			vq->trust_anchor_name = NULL;
			return;
		}
	}
	vq->key_entry = FUNC8(dnskey_rrset, ta, qstate, id);
	FUNC7(&ta->lock);
	if(vq->key_entry) {
		if(FUNC5(vq->key_entry) 
			&& vq->restart_count < VAL_MAX_RESTART_COUNT) {
			FUNC10(&vq->chain_blacklist, qstate->region, 
				origin, 1);
			qstate->errinf = NULL;
			vq->restart_count++;
			vq->key_entry = NULL;
			vq->state = VAL_INIT_STATE;
			return;
		} 
		vq->chain_blacklist = NULL;
		FUNC3(qstate, origin);
		FUNC2(qstate, "for trust anchor", ta->name);
		/* store the freshly primed entry in the cache */
		FUNC4(ve->kcache, vq->key_entry, qstate);
	}

	/* If the result of the prime is a null key, skip the FINDKEY state.*/
	if(!vq->key_entry || FUNC6(vq->key_entry) ||
		FUNC5(vq->key_entry)) {
		vq->state = VAL_VALIDATE_STATE;
	}
	/* the qstate will be reactivated after inform_super is done */
}