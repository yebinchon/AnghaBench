#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct outbound_entry {int dummy; } ;
struct msg_parse {int /*<<< orphan*/  flags; scalar_t__ opt_list; } ;
struct module_qstate {TYPE_4__* env; TYPE_3__* reply; int /*<<< orphan*/  qinfo; int /*<<< orphan*/  region; int /*<<< orphan*/  edns_opts_back_in; } ;
struct iter_qstate {int sent_count; int caps_fallback; int caps_server; scalar_t__ caps_minimisation_state; scalar_t__ minimisation_state; int /*<<< orphan*/  outlist; int /*<<< orphan*/  num_current_queries; void* state; int /*<<< orphan*/ * caps_reply; TYPE_7__* response; TYPE_7__* caps_response; TYPE_5__* dp; int /*<<< orphan*/  qinfo_out; } ;
struct iter_env {int dummy; } ;
struct edns_data {int /*<<< orphan*/  flags; scalar_t__ opt_list; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  enum module_ev { ____Placeholder_module_ev } module_ev ;
typedef  int /*<<< orphan*/  edns ;
struct TYPE_13__ {int /*<<< orphan*/ * rep; int /*<<< orphan*/  qinfo; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  scratch; TYPE_1__* cfg; } ;
struct TYPE_10__ {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; TYPE_2__* c; } ;
struct TYPE_9__ {int /*<<< orphan*/ * buffer; } ;
struct TYPE_8__ {scalar_t__ qname_minimisation; scalar_t__ use_caps_bits_for_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_CD ; 
 scalar_t__ DONOT_MINIMISE_STATE ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 void* QUERYTARGETS_STATE ; 
 void* QUERY_RESP_STATE ; 
 scalar_t__ SKIP_MINIMISE_STATE ; 
 scalar_t__ VERB_ALGO ; 
 scalar_t__ VERB_DETAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *,struct msg_parse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct module_qstate*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC7 (struct iter_env*,struct iter_qstate*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct msg_parse*,int /*<<< orphan*/ ,int) ; 
 int module_event_capsfail ; 
 int module_event_error ; 
 int module_event_noreply ; 
 int module_event_reply ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct outbound_entry*) ; 
 scalar_t__ FUNC16 (struct msg_parse*,struct msg_parse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,struct msg_parse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct msg_parse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,struct iter_env*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC23(struct module_qstate* qstate, struct iter_qstate* iq, 
	struct iter_env* ie, int id, struct outbound_entry* outbound,
	enum module_ev event)
{
	struct msg_parse* prs;
	struct edns_data edns;
	sldns_buffer* pkt;

	FUNC22(VERB_ALGO, "process_response: new external response event");
	iq->response = NULL;
	iq->state = QUERY_RESP_STATE;
	if(event == module_event_noreply || event == module_event_error) {
		if(event == module_event_noreply && iq->sent_count >= 3 &&
			qstate->env->cfg->use_caps_bits_for_id &&
			!iq->caps_fallback && !FUNC7(ie, iq)) {
			/* start fallback */
			iq->caps_fallback = 1;
			iq->caps_server = 0;
			iq->caps_reply = NULL;
			iq->caps_response = NULL;
			iq->caps_minimisation_state = DONOT_MINIMISE_STATE;
			iq->state = QUERYTARGETS_STATE;
			iq->num_current_queries--;
			/* need fresh attempts for the 0x20 fallback, if
			 * that was the cause for the failure */
			FUNC8(iq->dp, 3);
			FUNC22(VERB_DETAIL, "Capsforid: timeouts, starting fallback");
			goto handle_it;
		}
		goto handle_it;
	}
	if( (event != module_event_reply && event != module_event_capsfail)
		|| !qstate->reply) {
		FUNC11("Bad event combined with response");
		FUNC15(&iq->outlist, outbound);
		FUNC4(qstate, "module iterator received wrong internal event with a response message");
		(void)FUNC5(qstate, id, LDNS_RCODE_SERVFAIL);
		return;
	}

	/* parse message */
	prs = (struct msg_parse*)FUNC18(qstate->env->scratch, 
		sizeof(struct msg_parse));
	if(!prs) {
		FUNC11("out of memory on incoming message");
		/* like packet got dropped */
		goto handle_it;
	}
	FUNC14(prs, 0, sizeof(*prs));
	FUNC14(&edns, 0, sizeof(edns));
	pkt = qstate->reply->c->buffer;
	FUNC21(pkt, 0);
	if(FUNC17(pkt, prs, qstate->env->scratch) != LDNS_RCODE_NOERROR) {
		FUNC22(VERB_ALGO, "parse error on reply packet");
		goto handle_it;
	}
	/* edns is not examined, but removed from message to help cache */
	if(FUNC16(prs, &edns, qstate->env->scratch) !=
		LDNS_RCODE_NOERROR)
		goto handle_it;

	/* Copy the edns options we may got from the back end */
	if(edns.opt_list) {
		qstate->edns_opts_back_in = FUNC3(edns.opt_list,
			qstate->region);
		if(!qstate->edns_opts_back_in) {
			FUNC11("out of memory on incoming message");
			/* like packet got dropped */
			goto handle_it;
		}
		if(!FUNC6(qstate->env, qstate)) {
			FUNC11("unable to call edns_back_parsed callback");
			goto handle_it;
		}
	}

	/* remove CD-bit, we asked for in case we handle validation ourself */
	prs->flags &= ~BIT_CD;

	/* normalize and sanitize: easy to delete items from linked lists */
	if(!FUNC20(pkt, prs, &iq->qinfo_out, iq->dp->name, 
		qstate->env->scratch, qstate->env, ie)) {
		/* if 0x20 enabled, start fallback, but we have no message */
		if(event == module_event_capsfail && !iq->caps_fallback) {
			iq->caps_fallback = 1;
			iq->caps_server = 0;
			iq->caps_reply = NULL;
			iq->caps_response = NULL;
			iq->caps_minimisation_state = DONOT_MINIMISE_STATE;
			iq->state = QUERYTARGETS_STATE;
			iq->num_current_queries--;
			FUNC22(VERB_DETAIL, "Capsforid: scrub failed, starting fallback with no response");
		}
		goto handle_it;
	}

	/* allocate response dns_msg in region */
	iq->response = FUNC2(pkt, prs, qstate->region);
	if(!iq->response)
		goto handle_it;
	FUNC13(VERB_DETAIL, "response for", &qstate->qinfo);
	FUNC12(VERB_DETAIL, "reply from", iq->dp->name, 
		&qstate->reply->addr, qstate->reply->addrlen);
	if(verbosity >= VERB_ALGO)
		FUNC10("incoming scrubbed packet:", &iq->response->qinfo, 
			iq->response->rep);
	
	if(event == module_event_capsfail || iq->caps_fallback) {
		if(qstate->env->cfg->qname_minimisation &&
			iq->minimisation_state != DONOT_MINIMISE_STATE) {
			/* Skip QNAME minimisation for next query, since that
			 * one has to match the current query. */
			iq->minimisation_state = SKIP_MINIMISE_STATE;
		}
		/* for fallback we care about main answer, not additionals */
		/* removing that makes comparison more likely to succeed */
		FUNC1(iq->response->rep);

		if(iq->caps_fallback &&
			iq->caps_minimisation_state != iq->minimisation_state) {
			/* QNAME minimisation state has changed, restart caps
			 * fallback. */
			iq->caps_fallback = 0;
		}

		if(!iq->caps_fallback) {
			/* start fallback */
			iq->caps_fallback = 1;
			iq->caps_server = 0;
			iq->caps_reply = iq->response->rep;
			iq->caps_response = iq->response;
			iq->caps_minimisation_state = iq->minimisation_state;
			iq->state = QUERYTARGETS_STATE;
			iq->num_current_queries--;
			FUNC22(VERB_DETAIL, "Capsforid: starting fallback");
			goto handle_it;
		} else {
			/* check if reply is the same, otherwise, fail */
			if(!iq->caps_reply) {
				iq->caps_reply = iq->response->rep;
				iq->caps_response = iq->response;
				iq->caps_server = -1; /*become zero at ++,
				so that we start the full set of trials */
			} else if(FUNC0(iq->caps_reply) &&
				!FUNC0(iq->response->rep)) {
				/* prefer to upgrade to non-SERVFAIL */
				iq->caps_reply = iq->response->rep;
				iq->caps_response = iq->response;
			} else if(!FUNC0(iq->caps_reply) &&
				FUNC0(iq->response->rep)) {
				/* if we have non-SERVFAIL as answer then 
				 * we can ignore SERVFAILs for the equality
				 * comparison */
				/* no instructions here, skip other else */
			} else if(FUNC0(iq->caps_reply) &&
				FUNC0(iq->response->rep)) {
				/* failure is same as other failure in fallbk*/
				/* no instructions here, skip other else */
			} else if(!FUNC19(iq->response->rep, iq->caps_reply,
				qstate->env->scratch)) {
				FUNC22(VERB_DETAIL, "Capsforid fallback: "
					"getting different replies, failed");
				FUNC15(&iq->outlist, outbound);
				FUNC4(qstate, "0x20 failed, then got different replies in fallback");
				(void)FUNC5(qstate, id, 
					LDNS_RCODE_SERVFAIL);
				return;
			}
			/* continue the fallback procedure at next server */
			iq->caps_server++;
			iq->state = QUERYTARGETS_STATE;
			iq->num_current_queries--;
			FUNC22(VERB_DETAIL, "Capsforid: reply is equal. "
				"go to next fallback");
			goto handle_it;
		}
	}
	iq->caps_fallback = 0; /* if we were in fallback, 0x20 is OK now */

handle_it:
	FUNC15(&iq->outlist, outbound);
	FUNC9(qstate, iq, ie, id);
}