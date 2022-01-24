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
struct outbound_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ qname; } ;
struct module_qstate {scalar_t__* minfo; TYPE_2__ qinfo; int /*<<< orphan*/ * ext_state; TYPE_1__* env; } ;
struct iter_qstate {TYPE_2__ qchase; } ;
struct iter_env {int dummy; } ;
typedef  enum module_ev { ____Placeholder_module_ev } module_ev ;
struct TYPE_3__ {scalar_t__* modinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct module_qstate*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int module_event_error ; 
 int module_event_new ; 
 int module_event_pass ; 
 int /*<<< orphan*/  FUNC6 (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct module_qstate*,struct iter_qstate*,struct iter_env*,int,struct outbound_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

void 
FUNC11(struct module_qstate* qstate, enum module_ev event, int id,
	struct outbound_entry* outbound)
{
	struct iter_env* ie = (struct iter_env*)qstate->env->modinfo[id];
	struct iter_qstate* iq = (struct iter_qstate*)qstate->minfo[id];
	FUNC10(VERB_QUERY, "iterator[module %d] operate: extstate:%s event:%s", 
		id, FUNC8(qstate->ext_state[id]), FUNC9(event));
	if(iq) FUNC5(VERB_QUERY, "iterator operate: query", 
		&qstate->qinfo);
	if(iq && qstate->qinfo.qname != iq->qchase.qname)
		FUNC5(VERB_QUERY, "iterator operate: chased to", 
			&iq->qchase);

	/* perform iterator state machine */
	if((event == module_event_new || event == module_event_pass) && 
		iq == NULL) {
		if(!FUNC3(qstate, id)) {
			FUNC0(qstate, "malloc failure, new iterator module allocation");
			(void)FUNC1(qstate, id, LDNS_RCODE_SERVFAIL);
			return;
		}
		iq = (struct iter_qstate*)qstate->minfo[id];
		FUNC6(qstate, iq, ie, id);
		return;
	}
	if(iq && event == module_event_pass) {
		FUNC2(qstate, iq, ie, id);
		return;
	}
	if(iq && outbound) {
		FUNC7(qstate, iq, ie, id, outbound, event);
		return;
	}
	if(event == module_event_error) {
		FUNC10(VERB_ALGO, "got called with event error, giving up");
		FUNC0(qstate, "iterator module got the error event");
		(void)FUNC1(qstate, id, LDNS_RCODE_SERVFAIL);
		return;
	}

	FUNC4("bad event for iterator");
	FUNC0(qstate, "iterator module received wrong event");
	(void)FUNC1(qstate, id, LDNS_RCODE_SERVFAIL);
}