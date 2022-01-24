#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_26__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
struct val_qstate {scalar_t__ restart_count; TYPE_2__* chase_reply; TYPE_5__* key_entry; int /*<<< orphan*/  qchase; TYPE_1__* orig_msg; int /*<<< orphan*/  rrset_skip; int /*<<< orphan*/ * signer_name; int /*<<< orphan*/  state; } ;
struct val_env {int /*<<< orphan*/  kcache; } ;
struct module_qstate {int /*<<< orphan*/  reply_origin; TYPE_3__* env; int /*<<< orphan*/ * errinf; int /*<<< orphan*/  qinfo; int /*<<< orphan*/  query_flags; } ;
typedef  enum val_classification { ____Placeholder_val_classification } val_classification ;
struct TYPE_37__ {int /*<<< orphan*/  key_class; int /*<<< orphan*/  name; } ;
struct TYPE_36__ {int /*<<< orphan*/  rrset_cache; } ;
struct TYPE_35__ {scalar_t__ security; int /*<<< orphan*/  flags; int /*<<< orphan*/  an_numrrsets; int /*<<< orphan*/  rrset_count; scalar_t__ ar_numrrsets; scalar_t__ ns_numrrsets; } ;
struct TYPE_34__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  an_numrrsets; int /*<<< orphan*/  rrset_count; scalar_t__ ar_numrrsets; scalar_t__ ns_numrrsets; } ;
struct TYPE_33__ {TYPE_26__* rep; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
#define  VAL_CLASS_ANY 134 
#define  VAL_CLASS_CNAME 133 
#define  VAL_CLASS_CNAMENOANSWER 132 
#define  VAL_CLASS_NAMEERROR 131 
#define  VAL_CLASS_NODATA 130 
#define  VAL_CLASS_POSITIVE 129 
#define  VAL_CLASS_REFERRAL 128 
 int /*<<< orphan*/  VAL_FINISHED_STATE ; 
 scalar_t__ VAL_MAX_RESTART_COUNT ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_DETAIL ; 
 scalar_t__ FUNC2 (TYPE_26__*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_qstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,struct module_qstate*) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_26__*) ; 
 scalar_t__ sec_status_bogus ; 
 scalar_t__ sec_status_insecure ; 
 char* FUNC12 (scalar_t__) ; 
 char* FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_26__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct module_qstate*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,struct val_env*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,struct val_env*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,struct val_env*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC20 (struct module_qstate*,TYPE_3__*,struct val_env*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,struct val_env*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,struct val_env*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,struct val_env*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC26(struct module_qstate* qstate, struct val_qstate* vq, 
	struct val_env* ve, int id)
{
	enum val_classification subtype;
	int rcode;

	if(!vq->key_entry) {
		FUNC25(VERB_ALGO, "validate: no key entry, failed");
		return FUNC15(qstate, id);
	}

	/* This is the default next state. */
	vq->state = VAL_FINISHED_STATE;

	/* Unsigned responses must be underneath a "null" key entry.*/
	if(FUNC7(vq->key_entry)) {
		FUNC25(VERB_DETAIL, "Verified that %sresponse is INSECURE",
			vq->signer_name?"":"unsigned ");
		vq->chase_reply->security = sec_status_insecure;
		FUNC16(vq->chase_reply, vq->key_entry->name, 
			qstate->env->rrset_cache, qstate->env);
		FUNC5(ve->kcache, vq->key_entry, qstate);
		return 1;
	}

	if(FUNC6(vq->key_entry)) {
		FUNC9(VERB_DETAIL, "Could not establish a chain "
			"of trust to keys for", vq->key_entry->name,
			LDNS_RR_TYPE_DNSKEY, vq->key_entry->key_class);
		vq->chase_reply->security = sec_status_bogus;
		FUNC3(qstate, "while building chain of trust");
		if(vq->restart_count >= VAL_MAX_RESTART_COUNT)
			FUNC5(ve->kcache, vq->key_entry, qstate);
		return 1;
	}

	/* signerName being null is the indicator that this response was 
	 * unsigned */
	if(vq->signer_name == NULL) {
		FUNC10(VERB_ALGO, "processValidate: state has no "
			"signer name", &vq->qchase);
		FUNC25(VERB_DETAIL, "Could not establish validation of "
		          "INSECURE status of unsigned response.");
		FUNC3(qstate, "no signatures");
		FUNC4(qstate, qstate->reply_origin);
		vq->chase_reply->security = sec_status_bogus;
		return 1;
	}
	subtype = FUNC14(qstate->query_flags, &qstate->qinfo,
		&vq->qchase, vq->orig_msg->rep, vq->rrset_skip);
	if(subtype != VAL_CLASS_REFERRAL)
		FUNC11(vq->chase_reply, vq->orig_msg->rep);

	/* check signatures in the message; 
	 * answer and authority must be valid, additional is only checked. */
	if(!FUNC20(qstate, qstate->env, ve, &vq->qchase, 
		vq->chase_reply, vq->key_entry)) {
		/* workaround bad recursor out there that truncates (even
		 * with EDNS4k) to 512 by removing RRSIG from auth section
		 * for positive replies*/
		if((subtype == VAL_CLASS_POSITIVE || subtype == VAL_CLASS_ANY
			|| subtype == VAL_CLASS_CNAME) &&
			FUNC2(vq->orig_msg->rep)) {
			/* truncate the message some more */
			vq->orig_msg->rep->ns_numrrsets = 0;
			vq->orig_msg->rep->ar_numrrsets = 0;
			vq->orig_msg->rep->rrset_count = 
				vq->orig_msg->rep->an_numrrsets;
			vq->chase_reply->ns_numrrsets = 0;
			vq->chase_reply->ar_numrrsets = 0;
			vq->chase_reply->rrset_count = 
				vq->chase_reply->an_numrrsets;
			qstate->errinf = NULL;
		}
		else {
			FUNC25(VERB_DETAIL, "Validate: message contains "
				"bad rrsets");
			return 1;
		}
	}

	switch(subtype) {
		case VAL_CLASS_POSITIVE:
			FUNC25(VERB_ALGO, "Validating a positive response");
			FUNC23(qstate->env, ve,
				&vq->qchase, vq->chase_reply, vq->key_entry);
			FUNC25(VERB_DETAIL, "validate(positive): %s",
			  	FUNC12(
				vq->chase_reply->security));
			break;

		case VAL_CLASS_NODATA:
			FUNC25(VERB_ALGO, "Validating a nodata response");
			FUNC22(qstate->env, ve,
				&vq->qchase, vq->chase_reply, vq->key_entry);
			FUNC25(VERB_DETAIL, "validate(nodata): %s",
			  	FUNC12(
				vq->chase_reply->security));
			break;

		case VAL_CLASS_NAMEERROR:
			rcode = (int)FUNC0(vq->orig_msg->rep->flags);
			FUNC25(VERB_ALGO, "Validating a nxdomain response");
			FUNC21(qstate->env, ve, 
				&vq->qchase, vq->chase_reply, vq->key_entry, &rcode);
			FUNC25(VERB_DETAIL, "validate(nxdomain): %s",
			  	FUNC12(
				vq->chase_reply->security));
			FUNC1(vq->orig_msg->rep->flags, rcode);
			FUNC1(vq->chase_reply->flags, rcode);
			break;

		case VAL_CLASS_CNAME:
			FUNC25(VERB_ALGO, "Validating a cname response");
			FUNC19(qstate->env, ve,
				&vq->qchase, vq->chase_reply, vq->key_entry);
			FUNC25(VERB_DETAIL, "validate(cname): %s",
			  	FUNC12(
				vq->chase_reply->security));
			break;

		case VAL_CLASS_CNAMENOANSWER:
			FUNC25(VERB_ALGO, "Validating a cname noanswer "
				"response");
			FUNC18(qstate->env, ve,
				&vq->qchase, vq->chase_reply, vq->key_entry);
			FUNC25(VERB_DETAIL, "validate(cname_noanswer): %s",
			  	FUNC12(
				vq->chase_reply->security));
			break;

		case VAL_CLASS_REFERRAL:
			FUNC25(VERB_ALGO, "Validating a referral response");
			FUNC24(vq->chase_reply);
			FUNC25(VERB_DETAIL, "validate(referral): %s",
			  	FUNC12(
				vq->chase_reply->security));
			break;

		case VAL_CLASS_ANY:
			FUNC25(VERB_ALGO, "Validating a positive ANY "
				"response");
			FUNC17(qstate->env, ve, &vq->qchase, 
				vq->chase_reply, vq->key_entry);
			FUNC25(VERB_DETAIL, "validate(positive_any): %s",
			  	FUNC12(
				vq->chase_reply->security));
			break;

		default:
			FUNC8("validate: unhandled response subtype: %d",
				subtype);
	}
	if(vq->chase_reply->security == sec_status_bogus) {
		if(subtype == VAL_CLASS_POSITIVE)
			FUNC3(qstate, "wildcard");
		else FUNC3(qstate, FUNC13(subtype));
		FUNC3(qstate, "proof failed");
		FUNC4(qstate, qstate->reply_origin);
	}

	return 1;
}