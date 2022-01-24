#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct val_qstate {scalar_t__ wait_prime_ta; } ;
struct TYPE_5__ {scalar_t__ qtype; } ;
struct module_qstate {TYPE_1__ qinfo; int /*<<< orphan*/  return_msg; int /*<<< orphan*/  return_rcode; int /*<<< orphan*/  reply_origin; scalar_t__* minfo; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DLV ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,struct val_qstate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct module_qstate*,struct val_qstate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct module_qstate*,struct val_qstate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct module_qstate*,struct val_qstate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void
FUNC7(struct module_qstate* qstate, int id,
	struct module_qstate* super)
{
	struct val_qstate* vq = (struct val_qstate*)super->minfo[id];
	FUNC1(VERB_ALGO, "validator: inform_super, sub is",
		&qstate->qinfo);
	FUNC1(VERB_ALGO, "super is", &super->qinfo);
	if(!vq) {
		FUNC6(VERB_ALGO, "super: has no validator state");
		return;
	}
	if(vq->wait_prime_ta) {
		vq->wait_prime_ta = 0;
		FUNC5(super, vq, id, qstate->return_rcode,
			qstate->return_msg, qstate->reply_origin);
		return;
	}
	if(qstate->qinfo.qtype == LDNS_RR_TYPE_DS) {
		FUNC4(super, vq, id, qstate->return_rcode,
			qstate->return_msg, &qstate->qinfo, 
			qstate->reply_origin);
		return;
	} else if(qstate->qinfo.qtype == LDNS_RR_TYPE_DNSKEY) {
		FUNC3(super, vq, id, qstate->return_rcode,
			qstate->return_msg, &qstate->qinfo,
			qstate->reply_origin);
		return;
	} else if(qstate->qinfo.qtype == LDNS_RR_TYPE_DLV) {
		FUNC2(super, vq, id, qstate->return_rcode,
			qstate->return_msg, &qstate->qinfo);
		return;
	}
	FUNC0("internal error in validator: no inform_supers possible");
}