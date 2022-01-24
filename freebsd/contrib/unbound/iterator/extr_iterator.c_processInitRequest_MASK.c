#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {scalar_t__ qclass; int /*<<< orphan*/  qname; } ;
struct module_qstate {int no_cache_lookup; int no_cache_store; int was_ratelimited; int /*<<< orphan*/  region; TYPE_7__* env; int /*<<< orphan*/  query_flags; TYPE_4__ qinfo; int /*<<< orphan*/  reply; scalar_t__ prefetch_leeway; scalar_t__ reply_origin; scalar_t__ blacklist; } ;
struct TYPE_14__ {size_t qname_len; scalar_t__ qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/ * qname; } ;
struct iter_qstate {scalar_t__ query_restart_count; scalar_t__ depth; int ratelimit_ok; struct delegpt* dp; TYPE_1__ qchase; int /*<<< orphan*/  deleg_msg; scalar_t__ refetch_glue; int /*<<< orphan*/  minimisation_state; struct dns_msg* response; scalar_t__ sent_count; } ;
struct iter_env {scalar_t__ max_dependency_depth; int /*<<< orphan*/  queries_ratelimit_lock; int /*<<< orphan*/  num_queries_ratelimited; } ;
struct dns_msg {TYPE_5__* rep; int /*<<< orphan*/  qinfo; } ;
struct delegpt {size_t namelen; int /*<<< orphan*/ * name; } ;
typedef  enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_18__ {int /*<<< orphan*/  hints; TYPE_2__* cfg; int /*<<< orphan*/  rnd; scalar_t__* now; int /*<<< orphan*/  infra_cache; int /*<<< orphan*/  fwds; int /*<<< orphan*/  scratch_buffer; int /*<<< orphan*/  rrset_cache; scalar_t__ neg_cache; int /*<<< orphan*/  scratch; } ;
struct TYPE_17__ {int /*<<< orphan*/  flags; scalar_t__ prefetch_ttl; scalar_t__ ttl; int /*<<< orphan*/  security; } ;
struct TYPE_15__ {scalar_t__ ratelimit_factor; scalar_t__ qname_minimisation; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLLECT_CLASS_STATE ; 
 int /*<<< orphan*/  DONOT_MINIMISE_STATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INIT_MINIMISE_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_2_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 scalar_t__ LDNS_RCODE_REFUSED ; 
 scalar_t__ LDNS_RCODE_SERVFAIL ; 
 scalar_t__ LDNS_RR_CLASS_ANY ; 
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 scalar_t__ MAX_RESTART_COUNT ; 
 int /*<<< orphan*/  QUERYTARGETS_STATE ; 
 int RESPONSE_TYPE_CNAME ; 
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  VERB_DETAIL ; 
 scalar_t__ VERB_QUERY ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,struct iter_qstate*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (TYPE_7__*,int /*<<< orphan*/ *,size_t,scalar_t__,struct delegpt**) ; 
 void* FUNC3 (struct delegpt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct delegpt*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,size_t*) ; 
 struct delegpt* FUNC7 (TYPE_7__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct dns_msg* FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct module_qstate*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct module_qstate*,int,scalar_t__) ; 
 int FUNC12 (struct iter_qstate*) ; 
 scalar_t__ FUNC13 (struct module_qstate*,struct iter_qstate*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct module_qstate*,struct iter_qstate*,struct dns_msg*,int /*<<< orphan*/ **,size_t*) ; 
 void* FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,scalar_t__,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,struct delegpt*) ; 
 scalar_t__ FUNC20 (TYPE_7__*,TYPE_1__*) ; 
 scalar_t__ FUNC21 (struct module_qstate*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int FUNC28 (struct iter_qstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct module_qstate*,struct iter_qstate*,int,scalar_t__) ; 
 int FUNC30 (struct module_qstate*,struct iter_qstate*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC32 (struct dns_msg*,TYPE_1__*) ; 
 int /*<<< orphan*/  sec_status_unchecked ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dns_msg* FUNC35 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__,char*,...) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int
FUNC37(struct module_qstate* qstate, struct iter_qstate* iq,
	struct iter_env* ie, int id)
{
	uint8_t* delname;
	size_t delnamelen;
	struct dns_msg* msg = NULL;

	FUNC27(VERB_DETAIL, "resolving", &qstate->qinfo);
	/* check effort */

	/* We enforce a maximum number of query restarts. This is primarily a
	 * cheap way to prevent CNAME loops. */
	if(iq->query_restart_count > MAX_RESTART_COUNT) {
		FUNC36(VERB_QUERY, "request has exceeded the maximum number"
			" of query restarts with %d", iq->query_restart_count);
		FUNC9(qstate, "request has exceeded the maximum number "
			"restarts (eg. indirections)");
		if(iq->qchase.qname)
			FUNC10(qstate, "stop at", iq->qchase.qname);
		return FUNC11(qstate, id, LDNS_RCODE_SERVFAIL);
	}

	/* We enforce a maximum recursion/dependency depth -- in general, 
	 * this is unnecessary for dependency loops (although it will 
	 * catch those), but it provides a sensible limit to the amount 
	 * of work required to answer a given query. */
	FUNC36(VERB_ALGO, "request has dependency depth of %d", iq->depth);
	if(iq->depth > ie->max_dependency_depth) {
		FUNC36(VERB_QUERY, "request has exceeded the maximum "
			"dependency depth with depth of %d", iq->depth);
		FUNC9(qstate, "request has exceeded the maximum dependency "
			"depth (eg. nameserver lookup recursion)");
		return FUNC11(qstate, id, LDNS_RCODE_SERVFAIL);
	}

	/* If the request is qclass=ANY, setup to generate each class */
	if(qstate->qinfo.qclass == LDNS_RR_CLASS_ANY) {
		iq->qchase.qclass = 0;
		return FUNC28(iq, COLLECT_CLASS_STATE);
	}

	/*
	 * If we are restricted by a forward-zone or a stub-zone, we
	 * can't re-fetch glue for this delegation point.
	 * we won’t try to re-fetch glue if the iq->dp is null.
	 */
	if (iq->refetch_glue &&
	        iq->dp &&
	        !FUNC2(qstate->env, iq->dp->name,
	             iq->dp->namelen, iq->qchase.qclass, NULL)) {
	    iq->refetch_glue = 0;
	}

	/* Resolver Algorithm Step 1 -- Look for the answer in local data. */

	/* This either results in a query restart (CNAME cache response), a
	 * terminating response (ANSWER), or a cache miss (null). */
	
	if (FUNC21(qstate, &iq->qchase)) {
		/* Asked to not query cache. */
		FUNC36(VERB_ALGO, "no-cache set, going to the network");
		qstate->no_cache_lookup = 1;
		qstate->no_cache_store = 1;
		msg = NULL;
	} else if(qstate->blacklist) {
		/* if cache, or anything else, was blacklisted then
		 * getting older results from cache is a bad idea, no cache */
		FUNC36(VERB_ALGO, "cache blacklisted, going to the network");
		msg = NULL;
	} else if(!qstate->no_cache_lookup) {
		msg = FUNC8(qstate->env, iq->qchase.qname, 
			iq->qchase.qname_len, iq->qchase.qtype, 
			iq->qchase.qclass, qstate->query_flags,
			qstate->region, qstate->env->scratch, 0);
		if(!msg && qstate->env->neg_cache &&
			FUNC20(qstate->env, &iq->qchase)) {
			/* lookup in negative cache; may result in
			 * NOERROR/NODATA or NXDOMAIN answers that need validation */
			msg = FUNC35(qstate->env->neg_cache, &iq->qchase,
				qstate->region, qstate->env->rrset_cache,
				qstate->env->scratch_buffer, 
				*qstate->env->now, 1/*add SOA*/, NULL, 
				qstate->env->cfg);
		}
		/* item taken from cache does not match our query name, thus
		 * security needs to be re-examined later */
		if(msg && FUNC31(qstate->qinfo.qname,
			iq->qchase.qname) != 0)
			msg->rep->security = sec_status_unchecked;
	}
	if(msg) {
		/* handle positive cache response */
		enum response_type type = FUNC32(msg, 
			&iq->qchase);
		if(verbosity >= VERB_ALGO) {
			FUNC24("msg from cache lookup", &msg->qinfo, 
				msg->rep);
			FUNC36(VERB_ALGO, "msg ttl is %d, prefetch ttl %d", 
				(int)msg->rep->ttl, 
				(int)msg->rep->prefetch_ttl);
		}

		if(type == RESPONSE_TYPE_CNAME) {
			uint8_t* sname = 0;
			size_t slen = 0;
			FUNC36(VERB_ALGO, "returning CNAME response from "
				"cache");
			if(!FUNC15(qstate, iq, msg, 
				&sname, &slen)) {
				FUNC9(qstate, "failed to prepend CNAME "
					"components, malloc failure");
				return FUNC11(qstate, id, 
					LDNS_RCODE_SERVFAIL);
			}
			iq->qchase.qname = sname;
			iq->qchase.qname_len = slen;
			/* This *is* a query restart, even if it is a cheap 
			 * one. */
			iq->dp = NULL;
			iq->refetch_glue = 0;
			iq->query_restart_count++;
			iq->sent_count = 0;
			FUNC33(&qstate->reply_origin, NULL, 0, qstate->region);
			if(qstate->env->cfg->qname_minimisation)
				iq->minimisation_state = INIT_MINIMISE_STATE;
			return FUNC28(iq, INIT_REQUEST_STATE);
		}

		/* if from cache, NULL, else insert 'cache IP' len=0 */
		if(qstate->reply_origin)
			FUNC33(&qstate->reply_origin, NULL, 0, qstate->region);
		if(FUNC0(msg->rep->flags) == LDNS_RCODE_SERVFAIL)
			FUNC9(qstate, "SERVFAIL in cache");
		/* it is an answer, response, to final state */
		FUNC36(VERB_ALGO, "returning answer from cache.");
		iq->response = msg;
		return FUNC12(iq);
	}

	/* attempt to forward the request */
	if(FUNC13(qstate, iq))
	{
		if(!iq->dp) {
			FUNC25("alloc failure for forward dp");
			FUNC9(qstate, "malloc failure for forward zone");
			return FUNC11(qstate, id, LDNS_RCODE_SERVFAIL);
		}
		iq->refetch_glue = 0;
		iq->minimisation_state = DONOT_MINIMISE_STATE;
		/* the request has been forwarded.
		 * forwarded requests need to be immediately sent to the 
		 * next state, QUERYTARGETS. */
		return FUNC28(iq, QUERYTARGETS_STATE);
	}

	/* Resolver Algorithm Step 2 -- find the "best" servers. */

	/* first, adjust for DS queries. To avoid the grandparent problem, 
	 * we just look for the closest set of server to the parent of qname.
	 * When re-fetching glue we also need to ask the parent.
	 */
	if(iq->refetch_glue) {
		if(!iq->dp) {
			FUNC25("internal or malloc fail: no dp for refetch");
			FUNC9(qstate, "malloc failure, for delegation info");
			return FUNC11(qstate, id, LDNS_RCODE_SERVFAIL);
		}
		delname = iq->dp->name;
		delnamelen = iq->dp->namelen;
	} else {
		delname = iq->qchase.qname;
		delnamelen = iq->qchase.qname_len;
	}
	if(iq->qchase.qtype == LDNS_RR_TYPE_DS || iq->refetch_glue ||
	   (iq->qchase.qtype == LDNS_RR_TYPE_NS && qstate->prefetch_leeway
	   && FUNC2(qstate->env, delname, delnamelen, iq->qchase.qclass, NULL))) {
		/* remove first label from delname, root goes to hints,
		 * but only to fetch glue, not for qtype=DS. */
		/* also when prefetching an NS record, fetch it again from
		 * its parent, just as if it expired, so that you do not
		 * get stuck on an older nameserver that gives old NSrecords */
		if(FUNC5(delname) && (iq->refetch_glue ||
			(iq->qchase.qtype == LDNS_RR_TYPE_NS &&
			qstate->prefetch_leeway)))
			delname = NULL; /* go to root priming */
		else 	FUNC6(&delname, &delnamelen);
	}
	/* delname is the name to lookup a delegation for. If NULL rootprime */
	while(1) {
		
		/* Lookup the delegation in the cache. If null, then the 
		 * cache needs to be primed for the qclass. */
		if(delname)
		     iq->dp = FUNC7(qstate->env, delname, 
			delnamelen, iq->qchase.qtype, iq->qchase.qclass, 
			qstate->region, &iq->deleg_msg,
			*qstate->env->now+qstate->prefetch_leeway);
		else iq->dp = NULL;

		/* If the cache has returned nothing, then we have a 
		 * root priming situation. */
		if(iq->dp == NULL) {
			int r;
			/* if under auth zone, no prime needed */
			if(!FUNC1(qstate, iq, delname, delnamelen))
				return FUNC11(qstate, id, 
					LDNS_RCODE_SERVFAIL);
			if(iq->dp) /* use auth zone dp */
				return FUNC28(iq, INIT_REQUEST_2_STATE);
			/* if there is a stub, then no root prime needed */
			r = FUNC30(qstate, iq, id, delname,
				iq->qchase.qclass);
			if(r == 2)
				break; /* got noprime-stub-zone, continue */
			else if(r)
				return 0; /* stub prime request made */
			if(FUNC14(qstate->env->fwds, 
				iq->qchase.qclass)) {
				/* forward zone root, no root prime needed */
				/* fill in some dp - safety belt */
				iq->dp = FUNC16(qstate->env->hints, 
					iq->qchase.qclass);
				if(!iq->dp) {
					FUNC25("internal error: no hints dp");
					FUNC9(qstate, "no hints for this class");
					return FUNC11(qstate, id, 
						LDNS_RCODE_SERVFAIL);
				}
				iq->dp = FUNC3(iq->dp, qstate->region);
				if(!iq->dp) {
					FUNC25("out of memory in safety belt");
					FUNC9(qstate, "malloc failure, in safety belt");
					return FUNC11(qstate, id, 
						LDNS_RCODE_SERVFAIL);
				}
				return FUNC28(iq, INIT_REQUEST_2_STATE);
			}
			/* Note that the result of this will set a new
			 * DelegationPoint based on the result of priming. */
			if(!FUNC29(qstate, iq, id, iq->qchase.qclass))
				return FUNC11(qstate, id, 
					LDNS_RCODE_REFUSED);

			/* priming creates and sends a subordinate query, with 
			 * this query as the parent. So further processing for 
			 * this event will stop until reactivated by the 
			 * results of priming. */
			return 0;
		}
		if(!iq->ratelimit_ok && qstate->prefetch_leeway)
			iq->ratelimit_ok = 1; /* allow prefetches, this keeps
			otherwise valid data in the cache */
		if(!iq->ratelimit_ok && FUNC17(
			qstate->env->infra_cache, iq->dp->name,
			iq->dp->namelen, *qstate->env->now)) {
			/* and increment the rate, so that the rate for time
			 * now will also exceed the rate, keeping cache fresh */
			(void)FUNC18(qstate->env->infra_cache,
				iq->dp->name, iq->dp->namelen,
				*qstate->env->now, &qstate->qinfo,
				qstate->reply);
			/* see if we are passed through with slip factor */
			if(qstate->env->cfg->ratelimit_factor != 0 &&
				FUNC34(qstate->env->rnd,
				    qstate->env->cfg->ratelimit_factor) == 1) {
				iq->ratelimit_ok = 1;
				FUNC26(VERB_ALGO, "ratelimit allowed through for "
					"delegation point", iq->dp->name,
					LDNS_RR_TYPE_NS, LDNS_RR_CLASS_IN);
			} else {
				FUNC22(&ie->queries_ratelimit_lock);
				ie->num_queries_ratelimited++;
				FUNC23(&ie->queries_ratelimit_lock);
				FUNC26(VERB_ALGO, "ratelimit exceeded with "
					"delegation point", iq->dp->name,
					LDNS_RR_TYPE_NS, LDNS_RR_CLASS_IN);
				qstate->was_ratelimited = 1;
				FUNC9(qstate, "query was ratelimited");
				FUNC10(qstate, "for zone", iq->dp->name);
				return FUNC11(qstate, id, LDNS_RCODE_SERVFAIL);
			}
		}

		/* see if this dp not useless.
		 * It is useless if:
		 *	o all NS items are required glue. 
		 *	  or the query is for NS item that is required glue.
		 *	o no addresses are provided.
		 *	o RD qflag is on.
		 * Instead, go up one level, and try to get even further
		 * If the root was useless, use safety belt information. 
		 * Only check cache returns, because replies for servers
		 * could be useless but lead to loops (bumping into the
		 * same server reply) if useless-checked.
		 */
		if(FUNC19(&qstate->qinfo, qstate->query_flags, 
			iq->dp)) {
			struct delegpt* retdp = NULL;
			if(!FUNC2(qstate->env, iq->dp->name, iq->dp->namelen, iq->qchase.qclass, &retdp)) {
				if(retdp) {
					FUNC36(VERB_QUERY, "cache has stub "
						"or fwd but no addresses, "
						"fallback to config");
					iq->dp = FUNC3(retdp,
						qstate->region);
					if(!iq->dp) {
						FUNC25("out of memory in "
							"stub/fwd fallback");
						FUNC9(qstate, "malloc failure, for fallback to config");
						return FUNC11(qstate,
						    id, LDNS_RCODE_SERVFAIL);
					}
					break;
				}
				FUNC36(VERB_ALGO, "useless dp "
					"but cannot go up, servfail");
				FUNC4(VERB_ALGO, iq->dp);
				FUNC9(qstate, "no useful nameservers, "
					"and cannot go up");
				FUNC10(qstate, "for zone", iq->dp->name);
				return FUNC11(qstate, id, 
					LDNS_RCODE_SERVFAIL);
			}
			if(FUNC5(iq->dp->name)) {
				/* use safety belt */
				FUNC36(VERB_QUERY, "Cache has root NS but "
				"no addresses. Fallback to the safety belt.");
				iq->dp = FUNC16(qstate->env->hints, 
					iq->qchase.qclass);
				/* note deleg_msg is from previous lookup,
				 * but RD is on, so it is not used */
				if(!iq->dp) {
					FUNC25("internal error: no hints dp");
					return FUNC11(qstate, id, 
						LDNS_RCODE_REFUSED);
				}
				iq->dp = FUNC3(iq->dp, qstate->region);
				if(!iq->dp) {
					FUNC25("out of memory in safety belt");
					FUNC9(qstate, "malloc failure, in safety belt, for root");
					return FUNC11(qstate, id, 
						LDNS_RCODE_SERVFAIL);
				}
				break;
			} else {
				FUNC36(VERB_ALGO, 
					"cache delegation was useless:");
				FUNC4(VERB_ALGO, iq->dp);
				/* go up */
				delname = iq->dp->name;
				delnamelen = iq->dp->namelen;
				FUNC6(&delname, &delnamelen);
			}
		} else break;
	}

	FUNC36(VERB_ALGO, "cache delegation returns delegpt");
	FUNC4(VERB_ALGO, iq->dp);

	/* Otherwise, set the current delegation point and move on to the 
	 * next state. */
	return FUNC28(iq, INIT_REQUEST_2_STATE);
}