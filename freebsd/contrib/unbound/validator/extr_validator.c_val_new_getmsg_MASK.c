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
typedef  int uint16_t ;
struct val_qstate {scalar_t__ rrset_skip; TYPE_1__* chase_reply; struct dns_msg* orig_msg; int /*<<< orphan*/  qchase; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_ref {int dummy; } ;
struct reply_info {int flags; int qdcount; int rrset_count; struct reply_info* rrsets; } ;
struct module_qstate {int return_rcode; int query_flags; int /*<<< orphan*/  region; int /*<<< orphan*/  qinfo; struct dns_msg* return_msg; } ;
struct dns_msg {struct reply_info* rep; int /*<<< orphan*/  qinfo; } ;
struct TYPE_2__ {void* rrsets; } ;

/* Variables and functions */
 int BIT_CD ; 
 int BIT_QR ; 
 int BIT_RA ; 
 int BIT_RD ; 
 int LDNS_RCODE_NOERROR ; 
 int RR_COUNT_MAX ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct reply_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,struct reply_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct val_qstate*
FUNC4(struct module_qstate* qstate, struct val_qstate* vq)
{
	if(!qstate->return_msg || qstate->return_rcode != LDNS_RCODE_NOERROR) {
		/* create a message to verify */
		FUNC3(VERB_ALGO, "constructing reply for validation");
		vq->orig_msg = (struct dns_msg*)FUNC1(qstate->region,
			sizeof(struct dns_msg));
		if(!vq->orig_msg)
			return NULL;
		vq->orig_msg->qinfo = qstate->qinfo;
		vq->orig_msg->rep = (struct reply_info*)FUNC1(
			qstate->region, sizeof(struct reply_info));
		if(!vq->orig_msg->rep)
			return NULL;
		FUNC0(vq->orig_msg->rep, 0, sizeof(struct reply_info));
		vq->orig_msg->rep->flags = (uint16_t)(qstate->return_rcode&0xf)
			|BIT_QR|BIT_RA|(qstate->query_flags|(BIT_CD|BIT_RD));
		vq->orig_msg->rep->qdcount = 1;
	} else {
		vq->orig_msg = qstate->return_msg;
	}
	vq->qchase = qstate->qinfo;
	/* chase reply will be an edited (sub)set of the orig msg rrset ptrs */
	vq->chase_reply = FUNC2(qstate->region, 
		vq->orig_msg->rep, 
		sizeof(struct reply_info) - sizeof(struct rrset_ref));
	if(!vq->chase_reply)
		return NULL;
	if(vq->orig_msg->rep->rrset_count > RR_COUNT_MAX)
		return NULL; /* protect against integer overflow */
	vq->chase_reply->rrsets = FUNC2(qstate->region,
		vq->orig_msg->rep->rrsets, sizeof(struct ub_packed_rrset_key*)
			* vq->orig_msg->rep->rrset_count);
	if(!vq->chase_reply->rrsets)
		return NULL;
	vq->rrset_skip = 0;
	return vq;
}