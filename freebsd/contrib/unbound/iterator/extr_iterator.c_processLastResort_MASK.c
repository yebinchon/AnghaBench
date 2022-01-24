#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/  qname; } ;
struct module_qstate {TYPE_7__ qinfo; TYPE_6__* env; int /*<<< orphan*/  no_cache_store; void** ext_state; int /*<<< orphan*/  region; } ;
struct TYPE_24__ {int /*<<< orphan*/  qclass; } ;
struct iter_qstate {int refetch_glue; int num_target_queries; scalar_t__ depth; scalar_t__* target_count; TYPE_5__* dp; TYPE_3__* response; TYPE_2__* deleg_msg; int /*<<< orphan*/  pside_glue; scalar_t__ query_for_pside_glue; TYPE_4__ qchase; int /*<<< orphan*/  minimisation_state; scalar_t__ sent_count; int /*<<< orphan*/  query_restart_count; int /*<<< orphan*/  chase_flags; TYPE_5__* store_parent_NS; } ;
struct iter_env {scalar_t__ max_dependency_depth; scalar_t__ supports_ipv4; scalar_t__ supports_ipv6; } ;
struct delegpt_ns {int done_pside6; int done_pside4; int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; struct delegpt_ns* next; int /*<<< orphan*/  lame; } ;
struct delegpt_addr {int /*<<< orphan*/  tls_auth_name; int /*<<< orphan*/  lame; int /*<<< orphan*/  bogus; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; struct delegpt_ns* nslist; } ;
struct TYPE_26__ {TYPE_1__* cfg; int /*<<< orphan*/  hints; } ;
struct TYPE_25__ {int has_parent_side_NS; int /*<<< orphan*/  name; struct delegpt_ns* nslist; scalar_t__ usable_list; int /*<<< orphan*/  namelen; } ;
struct TYPE_23__ {int /*<<< orphan*/ * rep; } ;
struct TYPE_22__ {int /*<<< orphan*/ * rep; } ;
struct TYPE_21__ {scalar_t__ qname_minimisation; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_RD ; 
 int /*<<< orphan*/  INIT_MINIMISE_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 scalar_t__ MAX_TARGET_COUNT ; 
 int /*<<< orphan*/  QUERYTARGETS_STATE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct module_qstate*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct module_qstate*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct module_qstate*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct module_qstate*,struct iter_qstate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct delegpt* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC14 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (struct module_qstate*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* module_wait_subquery ; 
 int FUNC20 (struct iter_qstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct module_qstate*,struct iter_qstate*,struct iter_env*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct iter_qstate*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC24(struct module_qstate* qstate, struct iter_qstate* iq,
	struct iter_env* ie, int id)
{
	struct delegpt_ns* ns;
	int query_count = 0;
	FUNC23(VERB_ALGO, "No more query targets, attempting last resort");
	FUNC17(iq->dp);

	if(!FUNC1(qstate->env, iq->dp->name, iq->dp->namelen,
		iq->qchase.qclass, NULL)) {
		/* fail -- no more targets, no more hope of targets, no hope 
		 * of a response. */
		FUNC7(qstate, "all the configured stub or forward servers failed,");
		FUNC8(qstate, "at zone", iq->dp->name);
		FUNC23(VERB_QUERY, "configured stub or forward servers failed -- returning SERVFAIL");
		return FUNC10(qstate, id, LDNS_RCODE_SERVFAIL);
	}
	if(!iq->dp->has_parent_side_NS && FUNC5(iq->dp->name)) {
		struct delegpt* p = FUNC12(qstate->env->hints,
			iq->qchase.qclass);
		if(p) {
			struct delegpt_addr* a;
			iq->chase_flags &= ~BIT_RD; /* go to authorities */
			for(ns = p->nslist; ns; ns=ns->next) {
				(void)FUNC3(iq->dp, qstate->region,
					ns->name, ns->lame);
			}
			for(a = p->target_list; a; a=a->next_target) {
				(void)FUNC2(iq->dp, qstate->region,
					&a->addr, a->addrlen, a->bogus,
					a->lame, a->tls_auth_name);
			}
		}
		iq->dp->has_parent_side_NS = 1;
	} else if(!iq->dp->has_parent_side_NS) {
		if(!FUNC13(qstate->env, iq->dp,
			qstate->region, &qstate->qinfo) 
			|| !iq->dp->has_parent_side_NS) {
			/* if: malloc failure in lookup go up to try */
			/* if: no parent NS in cache - go up one level */
			FUNC23(VERB_ALGO, "try to grab parent NS");
			iq->store_parent_NS = iq->dp;
			iq->chase_flags &= ~BIT_RD; /* go to authorities */
			iq->deleg_msg = NULL;
			iq->refetch_glue = 1;
			iq->query_restart_count++;
			iq->sent_count = 0;
			if(qstate->env->cfg->qname_minimisation)
				iq->minimisation_state = INIT_MINIMISE_STATE;
			return FUNC20(iq, INIT_REQUEST_STATE);
		}
	}
	/* see if that makes new names available */
	if(!FUNC0(qstate->env, iq->qchase.qclass, 
		qstate->region, iq->dp))
		FUNC18("out of memory in cache_fill_missing");
	if(iq->dp->usable_list) {
		FUNC23(VERB_ALGO, "try parent-side-name, w. glue from cache");
		return FUNC20(iq, QUERYTARGETS_STATE);
	}
	/* try to fill out parent glue from cache */
	if(FUNC14(qstate->env, iq->dp,
		qstate->region, &qstate->qinfo)) {
		/* got parent stuff from cache, see if we can continue */
		FUNC23(VERB_ALGO, "try parent-side glue from cache");
		return FUNC20(iq, QUERYTARGETS_STATE);
	}
	/* query for an extra name added by the parent-NS record */
	if(FUNC4(iq->dp) > 0) {
		int qs = 0;
		FUNC23(VERB_ALGO, "try parent-side target name");
		if(!FUNC21(qstate, iq, ie, id, 1, &qs)) {
			FUNC7(qstate, "could not fetch nameserver");
			FUNC8(qstate, "at zone", iq->dp->name);
			return FUNC9(qstate, id, LDNS_RCODE_SERVFAIL);
		}
		iq->num_target_queries += qs;
		FUNC22(iq, qs);
		if(qs != 0) {
			qstate->ext_state[id] = module_wait_subquery;
			return 0; /* and wait for them */
		}
	}
	if(iq->depth == ie->max_dependency_depth) {
		FUNC23(VERB_QUERY, "maxdepth and need more nameservers, fail");
		FUNC7(qstate, "cannot fetch more nameservers because at max dependency depth");
		return FUNC10(qstate, id, LDNS_RCODE_SERVFAIL);
	}
	if(iq->depth > 0 && iq->target_count &&
		iq->target_count[1] > MAX_TARGET_COUNT) {
		char s[LDNS_MAX_DOMAINLEN+1];
		FUNC6(qstate->qinfo.qname, s);
		FUNC23(VERB_QUERY, "request %s has exceeded the maximum "
			"number of glue fetches %d", s, iq->target_count[1]);
		FUNC7(qstate, "exceeded the maximum number of glue fetches");
		return FUNC10(qstate, id, LDNS_RCODE_SERVFAIL);
	}
	/* mark cycle targets for parent-side lookups */
	FUNC15(qstate, iq->dp);
	/* see if we can issue queries to get nameserver addresses */
	/* this lookup is not randomized, but sequential. */
	for(ns = iq->dp->nslist; ns; ns = ns->next) {
		/* if this nameserver is at a delegation point, but that
		 * delegation point is a stub and we cannot go higher, skip*/
		if( ((ie->supports_ipv6 && !ns->done_pside6) ||
		    (ie->supports_ipv4 && !ns->done_pside4)) &&
		    !FUNC1(qstate->env, ns->name, ns->namelen,
			iq->qchase.qclass, NULL)) {
			FUNC19(VERB_ALGO, "cannot pside lookup ns "
				"because it is also a stub/forward,",
				ns->name, LDNS_RR_TYPE_NS, iq->qchase.qclass);
			if(ie->supports_ipv6) ns->done_pside6 = 1;
			if(ie->supports_ipv4) ns->done_pside4 = 1;
			continue;
		}
		/* query for parent-side A and AAAA for nameservers */
		if(ie->supports_ipv6 && !ns->done_pside6) {
			/* Send the AAAA request. */
			if(!FUNC11(qstate, iq, id, 
				ns->name, ns->namelen,
				LDNS_RR_TYPE_AAAA, iq->qchase.qclass)) {
				FUNC8(qstate, "could not generate nameserver AAAA lookup for", ns->name);
				return FUNC9(qstate, id,
					LDNS_RCODE_SERVFAIL);
			}
			ns->done_pside6 = 1;
			query_count++;
		}
		if(ie->supports_ipv4 && !ns->done_pside4) {
			/* Send the A request. */
			if(!FUNC11(qstate, iq, id, 
				ns->name, ns->namelen, 
				LDNS_RR_TYPE_A, iq->qchase.qclass)) {
				FUNC8(qstate, "could not generate nameserver A lookup for", ns->name);
				return FUNC9(qstate, id,
					LDNS_RCODE_SERVFAIL);
			}
			ns->done_pside4 = 1;
			query_count++;
		}
		if(query_count != 0) { /* suspend to await results */
			FUNC23(VERB_ALGO, "try parent-side glue lookup");
			iq->num_target_queries += query_count;
			FUNC22(iq, query_count);
			qstate->ext_state[id] = module_wait_subquery;
			return 0;
		}
	}

	/* if this was a parent-side glue query itself, then store that
	 * failure in cache. */
	if(!qstate->no_cache_store && iq->query_for_pside_glue
		&& !iq->pside_glue)
			FUNC16(qstate->env, &qstate->qinfo,
				iq->deleg_msg?iq->deleg_msg->rep:
				(iq->response?iq->response->rep:NULL));

	FUNC7(qstate, "all servers for this domain failed,");
	FUNC8(qstate, "at zone", iq->dp->name);
	FUNC23(VERB_QUERY, "out of query targets -- returning SERVFAIL");
	/* fail -- no more targets, no more hope of targets, no hope 
	 * of a response. */
	return FUNC10(qstate, id, LDNS_RCODE_SERVFAIL);
}