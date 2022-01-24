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
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_ref {int dummy; } ;
struct reply_info {struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct TYPE_2__ {int /*<<< orphan*/  qname; } ;
struct dns_msg {struct reply_info* rep; TYPE_1__ qinfo; } ;

/* Variables and functions */
 size_t RR_COUNT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct query_info*,int) ; 
 scalar_t__ FUNC1 (struct regional*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct regional*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dns_msg*
FUNC3(struct regional* region, struct query_info* q, size_t num)
{
	struct dns_msg* msg = (struct dns_msg*)FUNC1(region, 
		sizeof(struct dns_msg));
	if(!msg)
		return NULL;
	FUNC0(&msg->qinfo, q, sizeof(struct query_info));
	msg->qinfo.qname = FUNC2(region, q->qname, q->qname_len);
	if(!msg->qinfo.qname)
		return NULL;
	/* allocate replyinfo struct and rrset key array separately */
	msg->rep = (struct reply_info*)FUNC1(region,
		sizeof(struct reply_info) - sizeof(struct rrset_ref));
	if(!msg->rep)
		return NULL;
	if(num > RR_COUNT_MAX)
		return NULL; /* integer overflow protection */
	msg->rep->rrsets = (struct ub_packed_rrset_key**)
		FUNC1(region,
		num * sizeof(struct ub_packed_rrset_key*));
	if(!msg->rep->rrsets)
		return NULL;
	return msg;
}