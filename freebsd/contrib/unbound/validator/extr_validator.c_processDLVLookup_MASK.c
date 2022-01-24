#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  qclass; } ;
struct val_qstate {scalar_t__ dlv_status; size_t dlv_lookup_name_len; TYPE_6__ qchase; scalar_t__* dlv_lookup_name; void* state; scalar_t__ dlv_insecure_at; TYPE_2__* ds_rrset; int /*<<< orphan*/  key_entry; } ;
struct val_env {int /*<<< orphan*/  neg_cache; } ;
struct module_qstate {TYPE_5__* env; int /*<<< orphan*/  region; } ;
struct TYPE_11__ {int /*<<< orphan*/ * now; int /*<<< orphan*/  rrset_cache; TYPE_4__* anchors; } ;
struct TYPE_10__ {TYPE_3__* dlv_anchor; } ;
struct TYPE_9__ {int namelen; scalar_t__ name; } ;
struct TYPE_7__ {size_t dname_len; scalar_t__* dname; } ;
struct TYPE_8__ {TYPE_1__ rk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_CD ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DLV ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 void* VAL_FINDKEY_STATE ; 
 void* VAL_FINISHED_STATE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ dlv_ask_higher ; 
 scalar_t__ dlv_error ; 
 scalar_t__ dlv_success ; 
 scalar_t__ dlv_there_is_no_dlv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__**,size_t*) ; 
 int FUNC1 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_qstate*,int,scalar_t__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 int FUNC9 (struct module_qstate*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC12(struct module_qstate* qstate, struct val_qstate* vq, 
	struct val_env* ve, int id)
{
	struct module_qstate* newq = NULL;
	/* see if this we are ready to continue normal resolution */
	/* we may need more DLV lookups */
	if(vq->dlv_status==dlv_error)
		FUNC11(VERB_ALGO, "DLV woke up with status dlv_error");
	else if(vq->dlv_status==dlv_success)
		FUNC11(VERB_ALGO, "DLV woke up with status dlv_success");
	else if(vq->dlv_status==dlv_ask_higher)
		FUNC11(VERB_ALGO, "DLV woke up with status dlv_ask_higher");
	else if(vq->dlv_status==dlv_there_is_no_dlv)
		FUNC11(VERB_ALGO, "DLV woke up with status dlv_there_is_no_dlv");
	else 	FUNC11(VERB_ALGO, "DLV woke up with status unknown");

	if(vq->dlv_status == dlv_error) {
		FUNC11(VERB_QUERY, "failed DLV lookup");
		FUNC2(qstate, "failed DLV lookup");
		return FUNC9(qstate, id);
	} else if(vq->dlv_status == dlv_success) {
		uint8_t* nm;
		size_t nmlen;
		/* chain continues with DNSKEY, continue in FINDKEY */
		vq->state = VAL_FINDKEY_STATE;

		/* strip off the DLV suffix from the name; could result in . */
		FUNC5(FUNC1(vq->ds_rrset->rk.dname,
			qstate->env->anchors->dlv_anchor->name));
		nmlen = vq->ds_rrset->rk.dname_len -
			qstate->env->anchors->dlv_anchor->namelen + 1;
		nm = FUNC8(qstate->region, 
			vq->ds_rrset->rk.dname, nmlen);
		if(!nm) {
			FUNC6("Out of memory in DLVLook");
			return FUNC9(qstate, id);
		}
		nm[nmlen-1] = 0;

		vq->ds_rrset->rk.dname = nm;
		vq->ds_rrset->rk.dname_len = nmlen;

		/* create a nullentry for the key so the dnskey lookup
		 * can be retried after a validation failure for it */
		vq->key_entry = FUNC4(qstate->region,
			nm, nmlen, vq->qchase.qclass, 0, 0);
		if(!vq->key_entry) {
			FUNC6("Out of memory in DLVLook");
			return FUNC9(qstate, id);
		}

		if(!FUNC3(qstate, id, vq->ds_rrset->rk.dname, 
			vq->ds_rrset->rk.dname_len, LDNS_RR_TYPE_DNSKEY, 
			vq->qchase.qclass, BIT_CD, &newq, 0)) {
			FUNC11(VERB_ALGO, "error generating DNSKEY request");
			return FUNC9(qstate, id);
		}
		return 0;
	} else if(vq->dlv_status == dlv_there_is_no_dlv) {
		/* continue with the insecure result we got */
		vq->state = VAL_FINISHED_STATE;
		return 1;
	} 
	FUNC5(vq->dlv_status == dlv_ask_higher);

	/* ask higher, make sure we stay in DLV repo, below dlv_at */
	if(!FUNC1(vq->dlv_lookup_name,
		qstate->env->anchors->dlv_anchor->name)) {
		/* just like, there is no DLV */
		FUNC11(VERB_ALGO, "ask above dlv repo");
		vq->state = VAL_FINISHED_STATE;
		return 1;
	}
	if(vq->dlv_insecure_at && !FUNC1(vq->dlv_lookup_name,
		vq->dlv_insecure_at)) {
		/* already checked a chain lower than dlv_lookup_name */
		FUNC11(VERB_ALGO, "ask above insecure endpoint");
		FUNC7(VERB_ALGO, "enpt", vq->dlv_insecure_at, 0, 0);
		vq->state = VAL_FINISHED_STATE;
		return 1;
	}

	/* check negative cache before making new request */
	if(FUNC10(ve->neg_cache, vq->dlv_lookup_name,
		vq->dlv_lookup_name_len, vq->qchase.qclass,
		qstate->env->rrset_cache, *qstate->env->now)) {
		/* does not exist, go up one (go higher). */
		FUNC0(&vq->dlv_lookup_name, 
			&vq->dlv_lookup_name_len);
		/* limit number of labels, limited number of recursion */
		return FUNC12(qstate, vq, ve, id);
	}

	if(!FUNC3(qstate, id, vq->dlv_lookup_name,
		vq->dlv_lookup_name_len, LDNS_RR_TYPE_DLV, 
		vq->qchase.qclass, 0, &newq, 0)) {
		return FUNC9(qstate, id);
	}

	return 0;
}