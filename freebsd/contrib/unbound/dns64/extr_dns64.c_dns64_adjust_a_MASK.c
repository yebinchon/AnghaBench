#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct packed_rrset_data {int dummy; } ;
typedef  struct packed_rrset_data uint8_t ;
struct TYPE_5__ {void* data; int /*<<< orphan*/  hash; } ;
struct TYPE_4__ {scalar_t__ type; size_t dname_len; struct packed_rrset_data* dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; int /*<<< orphan*/  id; } ;
struct reply_info {size_t an_numrrsets; size_t rrset_count; struct reply_info* rep; struct ub_packed_rrset_key** rrsets; int /*<<< orphan*/  security; int /*<<< orphan*/  ar_numrrsets; int /*<<< orphan*/  ns_numrrsets; int /*<<< orphan*/  serve_expired_ttl; int /*<<< orphan*/  prefetch_ttl; int /*<<< orphan*/  ttl; int /*<<< orphan*/  qdcount; int /*<<< orphan*/  flags; int /*<<< orphan*/  qinfo; } ;
struct module_qstate {struct reply_info* return_msg; struct reply_info* region; TYPE_3__* env; int /*<<< orphan*/  qinfo; } ;
struct dns_msg {size_t an_numrrsets; size_t rrset_count; struct dns_msg* rep; struct ub_packed_rrset_key** rrsets; int /*<<< orphan*/  security; int /*<<< orphan*/  ar_numrrsets; int /*<<< orphan*/  ns_numrrsets; int /*<<< orphan*/  serve_expired_ttl; int /*<<< orphan*/  prefetch_ttl; int /*<<< orphan*/  ttl; int /*<<< orphan*/  qdcount; int /*<<< orphan*/  flags; int /*<<< orphan*/  qinfo; } ;
struct dns64_env {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rrset_cache; scalar_t__* modinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 struct reply_info* FUNC0 (struct reply_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,struct packed_rrset_data*,struct ub_packed_rrset_key*,struct packed_rrset_data**,struct reply_info*,struct dns64_env*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct reply_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct reply_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct packed_rrset_data*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct packed_rrset_data*) ; 
 size_t FUNC7 (struct packed_rrset_data*) ; 
 scalar_t__ FUNC8 (struct reply_info*,int) ; 
 scalar_t__ FUNC9 (struct reply_info*,struct packed_rrset_data*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct reply_info*,int /*<<< orphan*/ *,struct reply_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct packed_rrset_data*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC13(int id, struct module_qstate* super, struct module_qstate* qstate)
{
	struct dns64_env* dns64_env = (struct dns64_env*)super->env->modinfo[id];
	struct reply_info *rep, *cp;
	size_t i, s;
	struct packed_rrset_data* fd, *dd;
	struct ub_packed_rrset_key* fk, *dk;

	FUNC12(VERB_ALGO, "converting A answers to AAAA answers");

	FUNC3(super->region);
	FUNC3(qstate->return_msg);
	FUNC3(qstate->return_msg->rep);

	/* If dns64-synthall is enabled, return_msg is not initialized */
	if(!super->return_msg) {
		super->return_msg = (struct dns_msg*)FUNC8(
		    super->region, sizeof(struct dns_msg));
		if(!super->return_msg)
			return;
		FUNC4(super->return_msg, 0, sizeof(*super->return_msg));
		super->return_msg->qinfo = super->qinfo;
	}

	rep = qstate->return_msg->rep;

	/*
	 * Build the actual reply.
	 */
	cp = FUNC0(super->region, rep->flags, rep->qdcount,
		rep->ttl, rep->prefetch_ttl, rep->serve_expired_ttl,
		rep->an_numrrsets, rep->ns_numrrsets, rep->ar_numrrsets,
		rep->rrset_count, rep->security);
	if(!cp)
		return;

	/* allocate ub_key structures special or not */
	if(!FUNC10(cp, NULL, super->region)) {
		return;
	}

	/* copy everything and replace A by AAAA */
	for(i=0; i<cp->rrset_count; i++) {
		fk = rep->rrsets[i];
		dk = cp->rrsets[i];
		fd = (struct packed_rrset_data*)fk->entry.data;
		dk->rk = fk->rk;
		dk->id = fk->id;

		if(i<rep->an_numrrsets && fk->rk.type == FUNC2(LDNS_RR_TYPE_A)) {
			/* also sets dk->entry.hash */
			FUNC1(fk, fd, dk, &dd, super->region, dns64_env);
			if(!dd)
				return;
			/* Delete negative AAAA record from cache stored by
			 * the iterator module */
			FUNC11(super->env->rrset_cache, dk->rk.dname, 
					   dk->rk.dname_len, LDNS_RR_TYPE_AAAA, 
					   LDNS_RR_CLASS_IN, 0);
			/* Delete negative AAAA in msg cache for CNAMEs,
			 * stored by the iterator module */
			if(i != 0) /* if not the first RR */
			    FUNC5(super->env, dk->rk.dname,
				dk->rk.dname_len, LDNS_RR_TYPE_AAAA,
				LDNS_RR_CLASS_IN, 0);
		} else {
			dk->entry.hash = fk->entry.hash;
			dk->rk.dname = (uint8_t*)FUNC9(super->region,
				fk->rk.dname, fk->rk.dname_len);

			if(!dk->rk.dname)
				return;

			s = FUNC7(fd);
			dd = (struct packed_rrset_data*)FUNC9(
				super->region, fd, s);

			if(!dd)
				return;
		}

		FUNC6(dd);
		dk->entry.data = (void*)dd;
	}

	/* Commit changes. */
	super->return_msg->rep = cp;
}