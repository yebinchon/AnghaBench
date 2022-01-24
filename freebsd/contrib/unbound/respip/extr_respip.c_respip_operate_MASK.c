#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ub_packed_rrset_key {int dummy; } ;
struct respip_qstate {scalar_t__ state; } ;
struct respip_action_info {scalar_t__ member_0; scalar_t__ action; int /*<<< orphan*/ * member_1; } ;
struct reply_info {int dummy; } ;
struct outbound_entry {int dummy; } ;
struct TYPE_5__ {scalar_t__ qtype; } ;
struct module_qstate {int* ext_state; int is_drop; TYPE_1__* return_msg; int /*<<< orphan*/  return_rcode; int /*<<< orphan*/ * respip_action_info; int /*<<< orphan*/  region; int /*<<< orphan*/  client_info; TYPE_2__ qinfo; struct respip_qstate** minfo; } ;
typedef  enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
typedef  enum module_ev { ____Placeholder_module_ev } module_ev ;
typedef  int /*<<< orphan*/  actinfo ;
struct TYPE_4__ {struct reply_info* rep; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ RESPIP_INIT ; 
 scalar_t__ RESPIP_SUBQUERY_FINISHED ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int module_event_moddone ; 
 int module_event_new ; 
 int module_event_pass ; 
 void* module_finished ; 
 int module_wait_module ; 
 int module_wait_subquery ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct respip_action_info*,int) ; 
 struct respip_qstate* FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ respip_deny ; 
 scalar_t__ respip_inform_deny ; 
 scalar_t__ respip_none ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,struct reply_info*,struct reply_info**,struct respip_action_info*,struct ub_packed_rrset_key**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void
FUNC7(struct module_qstate* qstate, enum module_ev event, int id,
	struct outbound_entry* outbound)
{
	struct respip_qstate* rq = (struct respip_qstate*)qstate->minfo[id];

	FUNC2(VERB_QUERY, "respip operate: query", &qstate->qinfo);
	(void)outbound;

	if(event == module_event_new || event == module_event_pass) {
		if(!rq) {
			rq = FUNC4(qstate->region, sizeof(*rq));
			if(!rq)
				goto servfail;
			rq->state = RESPIP_INIT;
			qstate->minfo[id] = rq;
		}
		if(rq->state == RESPIP_SUBQUERY_FINISHED) {
			qstate->ext_state[id] = module_finished;
			return;
		}
		FUNC6(VERB_ALGO, "respip: pass to next module");
		qstate->ext_state[id] = module_wait_module;
	} else if(event == module_event_moddone) {
		/* If the reply may be subject to response-ip rewriting
		 * according to the query type, check the actions.  If a
		 * rewrite is necessary, we'll replace the reply in qstate
		 * with the new one. */
		enum module_ext_state next_state = module_finished;

		if((qstate->qinfo.qtype == LDNS_RR_TYPE_A ||
			qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA ||
			qstate->qinfo.qtype == LDNS_RR_TYPE_ANY) &&
			qstate->return_msg && qstate->return_msg->rep) {
			struct respip_action_info actinfo = {respip_none, NULL};
			struct reply_info* new_rep = qstate->return_msg->rep;
			struct ub_packed_rrset_key* alias_rrset = NULL;

			if(!FUNC5(&qstate->qinfo,
				qstate->client_info, qstate->return_msg->rep,
				&new_rep, &actinfo, &alias_rrset, 0,
				qstate->region)) {
				goto servfail;
			}
			if(actinfo.action != respip_none) {
				/* save action info for logging on a
				 * per-front-end-query basis */
				if(!(qstate->respip_action_info =
					FUNC3(qstate->region,
						&actinfo, sizeof(actinfo))))
				{
					FUNC1("out of memory");
					goto servfail;
				}
			} else {
				qstate->respip_action_info = NULL;
			}
			if (new_rep == qstate->return_msg->rep &&
				(actinfo.action == respip_deny ||
				actinfo.action == respip_inform_deny)) {
				/* for deny-variant actions (unless response-ip
				 * data is applied), mark the query state so
				 * the response will be dropped for all
				 * clients. */
				qstate->is_drop = 1;
			} else if(alias_rrset) {
				if(!FUNC0(qstate, alias_rrset))
					goto servfail;
				next_state = module_wait_subquery;
			}
			qstate->return_msg->rep = new_rep;
		}
		qstate->ext_state[id] = next_state;
	} else
		qstate->ext_state[id] = module_finished;

	return;

  servfail:
	qstate->return_rcode = LDNS_RCODE_SERVFAIL;
	qstate->return_msg = NULL;
}