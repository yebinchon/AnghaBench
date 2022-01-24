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
struct TYPE_9__ {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct module_qstate {int /*<<< orphan*/ * ext_state; TYPE_4__ qinfo; TYPE_3__* env; TYPE_5__* return_msg; int /*<<< orphan*/  return_rcode; scalar_t__* minfo; } ;
struct iter_qstate {int chase_flags; TYPE_5__* response; int /*<<< orphan*/  dp; int /*<<< orphan*/  qchase; scalar_t__ chase_to_rd; } ;
typedef  enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_10__ {TYPE_1__* rep; } ;
struct TYPE_8__ {TYPE_2__* cfg; } ;
struct TYPE_7__ {scalar_t__ harden_referral_path; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int BIT_RA ; 
 int BIT_RD ; 
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 int /*<<< orphan*/  LDNS_RCODE_NOERROR ; 
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 int RESPONSE_TYPE_ANSWER ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,struct iter_qstate*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  module_finished ; 
 int FUNC5 (int,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(struct module_qstate* qstate, int id)
{
	struct iter_qstate* iq = (struct iter_qstate*)qstate->minfo[id];
	enum response_type type;
	iq->response->rep->flags &= ~(BIT_RD|BIT_RA); /* ignore rec-lame */
	type = FUNC5(
		(int)((iq->chase_flags&BIT_RD) || iq->chase_to_rd), 
		iq->response, &iq->qchase, iq->dp);
	if(type == RESPONSE_TYPE_ANSWER) {
		qstate->return_rcode = LDNS_RCODE_NOERROR;
		qstate->return_msg = iq->response;
	} else {
		FUNC0(qstate, "prime response did not get an answer");
		FUNC1(qstate, "for", qstate->qinfo.qname);
		qstate->return_rcode = LDNS_RCODE_SERVFAIL;
		qstate->return_msg = NULL;
	}

	/* validate the root or stub after priming (if enabled).
	 * This is the same query as the prime query, but with validation.
	 * Now that we are primed, the additional queries that validation
	 * may need can be resolved, such as DLV. */
	if(qstate->env->cfg->harden_referral_path) {
		struct module_qstate* subq = NULL;
		FUNC4(VERB_ALGO, "schedule prime validation", 
			qstate->qinfo.qname, qstate->qinfo.qtype,
			qstate->qinfo.qclass);
		if(!FUNC3(qstate->qinfo.qname, 
			qstate->qinfo.qname_len, qstate->qinfo.qtype,
			qstate->qinfo.qclass, qstate, id, iq,
			INIT_REQUEST_STATE, FINISHED_STATE, &subq, 1)) {
			FUNC6(VERB_ALGO, "could not generate prime check");
		}
		FUNC2(qstate, iq, id);
	}

	/* This event is finished. */
	qstate->ext_state[id] = module_finished;
	return 0;
}