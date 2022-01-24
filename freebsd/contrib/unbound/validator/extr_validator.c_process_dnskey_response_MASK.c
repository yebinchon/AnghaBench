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
struct val_qstate {scalar_t__ restart_count; struct key_entry_key* key_entry; int /*<<< orphan*/ * chain_blacklist; void* state; int /*<<< orphan*/  ds_rrset; } ;
struct val_env {int /*<<< orphan*/  kcache; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct sock_list {int dummy; } ;
struct query_info {int /*<<< orphan*/  qname; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname_len; } ;
struct module_qstate {int /*<<< orphan*/ * errinf; int /*<<< orphan*/  region; TYPE_2__* env; } ;
struct key_entry_key {int dummy; } ;
struct dns_msg {int /*<<< orphan*/  rep; } ;
struct TYPE_4__ {TYPE_1__* cfg; int /*<<< orphan*/ * now; scalar_t__* modinfo; } ;
struct TYPE_3__ {int harden_algo_downgrade; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOGUS_KEY_TTL ; 
 int LDNS_RCODE_NOERROR ; 
 scalar_t__ VAL_MAX_RESTART_COUNT ; 
 void* VAL_VALIDATE_STATE ; 
 int /*<<< orphan*/  VERB_DETAIL ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,struct sock_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct key_entry_key*,struct module_qstate*) ; 
 struct key_entry_key* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct query_info*) ; 
 struct ub_packed_rrset_key* FUNC9 (struct query_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,struct sock_list*,int) ; 
 struct key_entry_key* FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,struct val_env*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int,char**,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC13(struct module_qstate* qstate, struct val_qstate* vq,
	int id, int rcode, struct dns_msg* msg, struct query_info* qinfo,
	struct sock_list* origin)
{
	struct val_env* ve = (struct val_env*)qstate->env->modinfo[id];
	struct key_entry_key* old = vq->key_entry;
	struct ub_packed_rrset_key* dnskey = NULL;
	int downprot;
	char* reason = NULL;

	if(rcode == LDNS_RCODE_NOERROR)
		dnskey = FUNC9(qinfo, msg->rep);

	if(dnskey == NULL) {
		/* bad response */
		FUNC12(VERB_DETAIL, "Missing DNSKEY RRset in response to "
			"DNSKEY query.");
		if(vq->restart_count < VAL_MAX_RESTART_COUNT) {
			FUNC10(&vq->chain_blacklist, qstate->region,
				origin, 1);
			qstate->errinf = NULL;
			vq->restart_count++;
			return;
		}
		vq->key_entry = FUNC4(qstate->region, 
			qinfo->qname, qinfo->qname_len, qinfo->qclass,
			BOGUS_KEY_TTL, *qstate->env->now);
		if(!vq->key_entry) {
			FUNC7("alloc failure in missing dnskey response");
			/* key_entry is NULL for failure in Validate */
		}
		FUNC0(qstate, "No DNSKEY record");
		FUNC2(qstate, origin);
		FUNC1(qstate, "for key", qinfo->qname);
		vq->state = VAL_VALIDATE_STATE;
		return;
	}
	if(!vq->ds_rrset) {
		FUNC7("internal error: no DS rrset for new DNSKEY response");
		vq->key_entry = NULL;
		vq->state = VAL_VALIDATE_STATE;
		return;
	}
	downprot = qstate->env->cfg->harden_algo_downgrade;
	vq->key_entry = FUNC11(qstate->region, qstate->env,
		ve, dnskey, vq->ds_rrset, downprot, &reason, qstate);

	if(!vq->key_entry) {
		FUNC7("out of memory in verify new DNSKEYs");
		vq->state = VAL_VALIDATE_STATE;
		return;
	}
	/* If the key entry isBad or isNull, then we can move on to the next
	 * state. */
	if(!FUNC6(vq->key_entry)) {
		if(FUNC5(vq->key_entry)) {
			if(vq->restart_count < VAL_MAX_RESTART_COUNT) {
				FUNC10(&vq->chain_blacklist, 
					qstate->region, origin, 1);
				qstate->errinf = NULL;
				vq->restart_count++;
				vq->key_entry = old;
				return;
			}
			FUNC12(VERB_DETAIL, "Did not match a DS to a DNSKEY, "
				"thus bogus.");
			FUNC0(qstate, reason);
			FUNC2(qstate, origin);
			FUNC1(qstate, "for key", qinfo->qname);
		}
		vq->chain_blacklist = NULL;
		vq->state = VAL_VALIDATE_STATE;
		return;
	}
	vq->chain_blacklist = NULL;
	qstate->errinf = NULL;

	/* The DNSKEY validated, so cache it as a trusted key rrset. */
	FUNC3(ve->kcache, vq->key_entry, qstate);

	/* If good, we stay in the FINDKEY state. */
	FUNC8(VERB_DETAIL, "validated DNSKEY", qinfo);
}