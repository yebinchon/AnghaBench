#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct val_qstate {int /*<<< orphan*/  chain_blacklist; } ;
struct query_info {size_t qname_len; int /*<<< orphan*/ * local_alias; scalar_t__ qclass; scalar_t__ qtype; int /*<<< orphan*/ * qname; } ;
struct module_qstate {int /*<<< orphan*/ * ext_state; int /*<<< orphan*/  region; int /*<<< orphan*/  blacklist; TYPE_1__* env; scalar_t__* minfo; } ;
struct mesh_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* attach_sub ) (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int,struct module_qstate**) ;int /*<<< orphan*/  (* add_sub ) (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int,struct module_qstate**,struct mesh_state**) ;scalar_t__ (* detect_cycle ) (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ BIT_RD ; 
 scalar_t__ LDNS_RR_TYPE_DLV ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int,struct module_qstate**,struct mesh_state**)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int,struct module_qstate**)) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ (*) (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int)) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct query_info*) ; 
 int /*<<< orphan*/  module_wait_subquery ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int,struct module_qstate**,struct mesh_state**) ; 
 int /*<<< orphan*/  FUNC9 (struct module_qstate*,struct query_info*,scalar_t__,int /*<<< orphan*/ ,int,struct module_qstate**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC11(struct module_qstate* qstate, int id, uint8_t* name, 
	size_t namelen, uint16_t qtype, uint16_t qclass, uint16_t flags, 
	struct module_qstate** newq, int detached)
{
	struct val_qstate* vq = (struct val_qstate*)qstate->minfo[id];
	struct query_info ask;
	int valrec;
	ask.qname = name;
	ask.qname_len = namelen;
	ask.qtype = qtype;
	ask.qclass = qclass;
	ask.local_alias = NULL;
	FUNC5(VERB_ALGO, "generate request", &ask);
	/* enable valrec flag to avoid recursion to the same validation
	 * routine, this lookup is simply a lookup. DLVs need validation */
	if(qtype == LDNS_RR_TYPE_DLV)
		valrec = 0;
	else valrec = 1;

	FUNC0(FUNC3(qstate->env->detect_cycle));
	if((*qstate->env->detect_cycle)(qstate, &ask,
		(uint16_t)(BIT_RD|flags), 0, valrec)) {
		FUNC10(VERB_ALGO, "Could not generate request: cycle detected");
		return 0;
	}

	if(detached) {
		struct mesh_state* sub = NULL;
		FUNC0(FUNC1(
			qstate->env->add_sub));
		if(!(*qstate->env->add_sub)(qstate, &ask, 
			(uint16_t)(BIT_RD|flags), 0, valrec, newq, &sub)){
			FUNC4("Could not generate request: out of memory");
			return 0;
		}
	}
	else {
		FUNC0(FUNC2(
			qstate->env->attach_sub));
		if(!(*qstate->env->attach_sub)(qstate, &ask, 
			(uint16_t)(BIT_RD|flags), 0, valrec, newq)){
			FUNC4("Could not generate request: out of memory");
			return 0;
		}
	}
	/* newq; validator does not need state created for that
	 * query, and its a 'normal' for iterator as well */
	if(*newq) {
		/* add our blacklist to the query blacklist */
		FUNC6(&(*newq)->blacklist, (*newq)->region,
			vq->chain_blacklist);
	}
	qstate->ext_state[id] = module_wait_subquery;
	return 1;
}