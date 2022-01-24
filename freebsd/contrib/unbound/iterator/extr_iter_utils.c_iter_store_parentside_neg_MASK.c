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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_4__ {struct packed_rrset_data* data; int /*<<< orphan*/  hash; struct ub_packed_rrset_key* key; } ;
struct TYPE_3__ {int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; scalar_t__ flags; void* rrset_class; void* type; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;
struct reply_info {scalar_t__ rrset_count; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; } ;
struct packed_rrset_data {int count; size_t* rr_len; int /*<<< orphan*/ * rr_data; int /*<<< orphan*/  ttl; int /*<<< orphan*/ * rr_ttl; int /*<<< orphan*/  trust; scalar_t__ rrsig_count; } ;
struct module_env {int /*<<< orphan*/  scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  NORR_TTL ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct module_env*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct packed_rrset_data*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 struct ub_packed_rrset_key* FUNC9 (struct reply_info*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  rrset_trust_ans_noAA ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ub_packed_rrset_key*) ; 

void FUNC13(struct module_env* env, 
        struct query_info* qinfo, struct reply_info* rep)
{
	/* TTL: NS from referral in iq->deleg_msg,
	 *      or first RR from iq->response,
	 *      or servfail5secs if !iq->response */ 
	time_t ttl = NORR_TTL;
	struct ub_packed_rrset_key* neg;
	struct packed_rrset_data* newd;
	if(rep) {
		struct ub_packed_rrset_key* rrset = FUNC9(rep);
		if(!rrset && rep->rrset_count != 0) rrset = rep->rrsets[0];
		if(rrset) ttl = FUNC12(rrset);
	}
	/* create empty rrset to store */
	neg = (struct ub_packed_rrset_key*)FUNC6(env->scratch,
	                sizeof(struct ub_packed_rrset_key));
	if(!neg) {
		FUNC2("out of memory in store_parentside_neg");
		return;
	}
	FUNC4(&neg->entry, 0, sizeof(neg->entry));
	neg->entry.key = neg;
	neg->rk.type = FUNC0(qinfo->qtype);
	neg->rk.rrset_class = FUNC0(qinfo->qclass);
	neg->rk.flags = 0;
	neg->rk.dname = FUNC7(env->scratch, qinfo->qname, 
		qinfo->qname_len);
	if(!neg->rk.dname) {
		FUNC2("out of memory in store_parentside_neg");
		return;
	}
	neg->rk.dname_len = qinfo->qname_len;
	neg->entry.hash = FUNC10(&neg->rk);
	newd = (struct packed_rrset_data*)FUNC8(env->scratch, 
		sizeof(struct packed_rrset_data) + sizeof(size_t) +
		sizeof(uint8_t*) + sizeof(time_t) + sizeof(uint16_t));
	if(!newd) {
		FUNC2("out of memory in store_parentside_neg");
		return;
	}
	neg->entry.data = newd;
	newd->ttl = ttl;
	/* entry must have one RR, otherwise not valid in cache.
	 * put in one RR with empty rdata: those are ignored as nameserver */
	newd->count = 1;
	newd->rrsig_count = 0;
	newd->trust = rrset_trust_ans_noAA;
	newd->rr_len = (size_t*)((uint8_t*)newd +
		sizeof(struct packed_rrset_data));
	newd->rr_len[0] = 0 /* zero len rdata */ + sizeof(uint16_t);
	FUNC5(newd);
	newd->rr_ttl[0] = newd->ttl;
	FUNC11(newd->rr_data[0], 0 /* zero len rdata */);
	/* store it */
	FUNC3(VERB_ALGO, "store parent-side negative", neg);
	FUNC1(env, neg);
}