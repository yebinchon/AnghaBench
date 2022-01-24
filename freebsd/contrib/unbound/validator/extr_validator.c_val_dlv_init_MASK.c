#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {size_t qname_len; scalar_t__ qtype; int /*<<< orphan*/  qclass; int /*<<< orphan*/ * qname; } ;
struct val_qstate {size_t dlv_lookup_name_len; size_t dlv_insecure_at_len; size_t signer_len; TYPE_3__ qchase; int /*<<< orphan*/ * dlv_lookup_name; int /*<<< orphan*/  state; int /*<<< orphan*/ * dlv_insecure_at; TYPE_5__* key_entry; int /*<<< orphan*/ * signer_name; TYPE_4__* dlv_checked; } ;
struct val_env {int /*<<< orphan*/  neg_cache; } ;
struct module_qstate {TYPE_2__* env; int /*<<< orphan*/  region; } ;
struct TYPE_10__ {size_t namelen; int /*<<< orphan*/ * name; } ;
struct TYPE_9__ {size_t namelen; int /*<<< orphan*/ * name; } ;
struct TYPE_7__ {TYPE_1__* anchors; int /*<<< orphan*/ * now; int /*<<< orphan*/  rrset_cache; } ;
struct TYPE_6__ {TYPE_4__* dlv_anchor; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DLV ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  VAL_DLVLOOKUP_STATE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,int,int /*<<< orphan*/ *,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 void* FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC9 (struct module_qstate*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC12(struct module_qstate* qstate, struct val_qstate* vq, 
	struct val_env* ve, int id)
{
	uint8_t* nm;
	size_t nm_len;
	struct module_qstate* newq = NULL;
	/* there must be a DLV configured */
	FUNC4(qstate->env->anchors->dlv_anchor);
	/* this bool is true to avoid looping in the DLV checks */
	FUNC4(vq->dlv_checked);

	/* init the DLV lookup variables */
	vq->dlv_lookup_name = NULL;
	vq->dlv_lookup_name_len = 0;
	vq->dlv_insecure_at = NULL;
	vq->dlv_insecure_at_len = 0;

	/* Determine the name for which we want to lookup DLV.
	 * This name is for the current message, or 
	 * for the current RRset for CNAME, referral subtypes.
	 * If there is a signer, use that, otherwise the domain name */
	if(vq->signer_name) {
		nm = vq->signer_name;
		nm_len = vq->signer_len;
	} else {
		/* use qchase */
		nm = vq->qchase.qname;
		nm_len = vq->qchase.qname_len;
		if(vq->qchase.qtype == LDNS_RR_TYPE_DS)
			FUNC0(&nm, &nm_len);
	}
	FUNC6(VERB_ALGO, "DLV init look", nm, LDNS_RR_TYPE_DS,
		vq->qchase.qclass);
	FUNC4(nm && nm_len);
	/* sanity check: no DLV lookups below the DLV anchor itself.
	 * Like, an securely insecure delegation there makes no sense. */
	if(FUNC1(nm, qstate->env->anchors->dlv_anchor->name)) {
		FUNC11(VERB_ALGO, "DLV lookup within DLV repository denied");
		return 1;
	}
	/* concat name (minus root label) + dlv name */
	vq->dlv_lookup_name_len = nm_len - 1 + 
		qstate->env->anchors->dlv_anchor->namelen;
	vq->dlv_lookup_name = FUNC8(qstate->region, 
		vq->dlv_lookup_name_len);
	if(!vq->dlv_lookup_name) {
		FUNC5("Out of memory preparing DLV lookup");
		return FUNC9(qstate, id);
	}
	FUNC7(vq->dlv_lookup_name, nm, nm_len-1);
	FUNC7(vq->dlv_lookup_name+nm_len-1, 
		qstate->env->anchors->dlv_anchor->name, 
		qstate->env->anchors->dlv_anchor->namelen);
	FUNC6(VERB_ALGO, "DLV name", vq->dlv_lookup_name, 
		LDNS_RR_TYPE_DLV, vq->qchase.qclass);

	/* determine where the insecure point was determined, the DLV must 
	 * be equal or below that to continue building the trust chain 
	 * down. May be NULL if no trust chain was built yet */
	nm = NULL;
	if(vq->key_entry && FUNC3(vq->key_entry)) {
		nm = vq->key_entry->name;
		nm_len = vq->key_entry->namelen;
	}
	if(nm) {
		vq->dlv_insecure_at_len = nm_len - 1 +
			qstate->env->anchors->dlv_anchor->namelen;
		vq->dlv_insecure_at = FUNC8(qstate->region,
			vq->dlv_insecure_at_len);
		if(!vq->dlv_insecure_at) {
			FUNC5("Out of memory preparing DLV lookup");
			return FUNC9(qstate, id);
		}
		FUNC7(vq->dlv_insecure_at, nm, nm_len-1);
		FUNC7(vq->dlv_insecure_at+nm_len-1, 
			qstate->env->anchors->dlv_anchor->name, 
			qstate->env->anchors->dlv_anchor->namelen);
		FUNC6(VERB_ALGO, "insecure_at", 
			vq->dlv_insecure_at, 0, vq->qchase.qclass);
	}

	/* If we can find the name in the aggressive negative cache,
	 * give up; insecure is the answer */
	while(FUNC10(ve->neg_cache, vq->dlv_lookup_name,
		vq->dlv_lookup_name_len, vq->qchase.qclass,
		qstate->env->rrset_cache, *qstate->env->now)) {
		/* go up */
		FUNC0(&vq->dlv_lookup_name, 
			&vq->dlv_lookup_name_len);
		/* too high? */
		if(!FUNC1(vq->dlv_lookup_name,
			qstate->env->anchors->dlv_anchor->name)) {
			FUNC11(VERB_ALGO, "ask above dlv repo");
			return 1; /* Above the repo is insecure */
		}
		/* above chain of trust? */
		if(vq->dlv_insecure_at && !FUNC1(
			vq->dlv_lookup_name, vq->dlv_insecure_at)) {
			FUNC11(VERB_ALGO, "ask above insecure endpoint");
			return 1;
		}
	}

	/* perform a lookup for the DLV; with validation */
	vq->state = VAL_DLVLOOKUP_STATE;
	if(!FUNC2(qstate, id, vq->dlv_lookup_name, 
		vq->dlv_lookup_name_len, LDNS_RR_TYPE_DLV,
		vq->qchase.qclass, 0, &newq, 0)) {
		return FUNC9(qstate, id);
	}

	/* Find the closest encloser DLV from the repository.
	 * then that is used to build another chain of trust 
	 * This may first require a query 'too low' that has NSECs in
	 * the answer, from which we determine the closest encloser DLV. 
	 * When determine the closest encloser, skip empty nonterminals,
	 * since we want a nonempty node in the DLV repository. */

	return 0;
}