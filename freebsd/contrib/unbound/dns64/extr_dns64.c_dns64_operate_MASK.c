#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct outbound_entry {int dummy; } ;
struct module_qstate {scalar_t__* ext_state; int no_cache_store; struct dns64_qstate** minfo; int /*<<< orphan*/  region; int /*<<< orphan*/  qinfo; } ;
struct dns64_qstate {scalar_t__ state; int started_no_cache_store; } ;
typedef  enum module_ev { ____Placeholder_module_ev } module_ev ;

/* Variables and functions */
 scalar_t__ DNS64_INTERNAL_QUERY ; 
 scalar_t__ DNS64_NEW_QUERY ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ FUNC0 (struct module_qstate*,int) ; 
 scalar_t__ FUNC1 (struct module_qstate*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
#define  module_event_moddone 130 
#define  module_event_new 129 
#define  module_event_pass 128 
 scalar_t__ module_finished ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct module_qstate* qstate, enum module_ev event, int id,
		struct outbound_entry* outbound)
{
	struct dns64_qstate* iq;
	(void)outbound;
	FUNC6(VERB_QUERY, "dns64[module %d] operate: extstate:%s event:%s",
			id, FUNC4(qstate->ext_state[id]),
			FUNC5(event));
	FUNC2(VERB_QUERY, "dns64 operate: query", &qstate->qinfo);

	switch(event) {
		case module_event_new:
			/* Tag this query as being new and fall through. */
			iq = (struct dns64_qstate*)FUNC3(
				qstate->region, sizeof(*iq));
			qstate->minfo[id] = iq;
			iq->state = DNS64_NEW_QUERY;
			iq->started_no_cache_store = qstate->no_cache_store;
			qstate->no_cache_store = 1;
  			/* fallthrough */
		case module_event_pass:
			qstate->ext_state[id] = FUNC1(qstate, id);
			break;
		case module_event_moddone:
			qstate->ext_state[id] = FUNC0(qstate, id);
			break;
		default:
			qstate->ext_state[id] = module_finished;
			break;
	}
	if(qstate->ext_state[id] == module_finished) {
		iq = (struct dns64_qstate*)qstate->minfo[id];
		if(iq && iq->state != DNS64_INTERNAL_QUERY)
			qstate->no_cache_store = iq->started_no_cache_store;
	}
}