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
struct TYPE_2__ {scalar_t__ qclass; scalar_t__ qtype; } ;
struct module_qstate {scalar_t__ return_rcode; scalar_t__ is_priming; scalar_t__* minfo; TYPE_1__ qinfo; } ;
struct iter_qstate {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DSNS_FIND_STATE ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RR_CLASS_ANY ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,int,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,int,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,int,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_qstate*,int,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct module_qstate*,int,struct module_qstate*) ; 

void
FUNC5(struct module_qstate* qstate, int id, 
	struct module_qstate* super)
{
	if(!qstate->is_priming && super->qinfo.qclass == LDNS_RR_CLASS_ANY)
		FUNC2(qstate, id, super);
	else if(super->qinfo.qtype == LDNS_RR_TYPE_DS && ((struct iter_qstate*)
		super->minfo[id])->state == DSNS_FIND_STATE)
		FUNC3(qstate, id, super);
	else if(qstate->return_rcode != LDNS_RCODE_NOERROR)
		FUNC0(qstate, id, super);
	else if(qstate->is_priming)
		FUNC1(qstate, id, super);
	else	FUNC4(qstate, id, super);
}