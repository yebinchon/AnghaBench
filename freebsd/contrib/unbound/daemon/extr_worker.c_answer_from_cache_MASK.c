#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  scalar_t__ time_t ;
struct TYPE_13__ {scalar_t__* now; int /*<<< orphan*/  rrset_cache; TYPE_7__* cfg; scalar_t__ need_to_validate; } ;
struct TYPE_12__ {int /*<<< orphan*/  ans_secure; scalar_t__ extended; int /*<<< orphan*/ * ans_rcode; int /*<<< orphan*/  ans_bogus; int /*<<< orphan*/  zero_ttl_responses; } ;
struct worker {int /*<<< orphan*/  scratchpad; TYPE_5__ env; TYPE_4__ stats; TYPE_3__* daemon; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct respip_client_info {int dummy; } ;
struct reply_info {scalar_t__ serve_expired_ttl; scalar_t__ ttl; scalar_t__ an_numrrsets; scalar_t__ security; int /*<<< orphan*/  rrset_count; int /*<<< orphan*/  ref; TYPE_2__** rrsets; } ;
struct query_info {int dummy; } ;
struct edns_data {int udp_size; int bits; int /*<<< orphan*/ * opt_list; scalar_t__ ext_rcode; void* edns_version; } ;
struct comm_reply {TYPE_8__* c; } ;
struct TYPE_15__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_14__ {scalar_t__ serve_expired_ttl; scalar_t__ serve_expired; scalar_t__ ignore_cd; } ;
struct TYPE_11__ {scalar_t__ use_response_ip; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_1__ rk; } ;

/* Variables and functions */
 int BIT_CD ; 
 void* EDNS_ADVERTISED_SIZE ; 
 void* EDNS_ADVERTISED_VERSION ; 
 int EDNS_DO ; 
 int LDNS_RCODE_MASK ; 
 size_t LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_CNAME ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNAME ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct edns_data*,struct edns_data*,TYPE_7__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct worker*,struct query_info*,struct respip_client_info*,struct reply_info*,struct comm_reply*,struct ub_packed_rrset_key**,struct reply_info**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,struct query_info*,int,int,struct edns_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,struct query_info*,int /*<<< orphan*/ *,struct reply_info*,int,struct edns_data*,struct comm_reply*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,struct query_info*,int /*<<< orphan*/ *,struct reply_info*,size_t,struct edns_data*,struct comm_reply*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct reply_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct query_info*,struct reply_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct query_info*,struct reply_info*,int,int,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int,struct edns_data*,int,int) ; 
 struct reply_info* FUNC9 (struct reply_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct reply_info*,struct query_info*,struct reply_info*,struct respip_client_info*,int,struct reply_info**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sec_status_bogus ; 
 scalar_t__ sec_status_secure ; 
 scalar_t__ sec_status_secure_sentinel_fail ; 
 scalar_t__ sec_status_unchecked ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC17(struct worker* worker, struct query_info* qinfo,
	struct respip_client_info* cinfo, int* need_drop,
	struct ub_packed_rrset_key** alias_rrset,
	struct reply_info** partial_repp,
	struct reply_info* rep, uint16_t id, uint16_t flags, 
	struct comm_reply* repinfo, struct edns_data* edns)
{
	struct edns_data edns_bak;
	time_t timenow = *worker->env.now;
	uint16_t udpsize = edns->udp_size;
	struct reply_info* encode_rep = rep;
	struct reply_info* partial_rep = *partial_repp;
	int secure;
	int must_validate = (!(flags&BIT_CD) || worker->env.cfg->ignore_cd)
		&& worker->env.need_to_validate;
	*partial_repp = NULL;	/* avoid accidental further pass */
	if(worker->env.cfg->serve_expired) {
		if(worker->env.cfg->serve_expired_ttl &&
			rep->serve_expired_ttl < timenow)
			return 0;
		if(!FUNC11(rep->ref, rep->rrset_count, 0))
			return 0;
		/* below, rrsets with ttl before timenow become TTL 0 in
		 * the response */
		/* This response was served with zero TTL */
		if (timenow >= rep->ttl) {
			worker->stats.zero_ttl_responses++;
		}
	} else {
		/* see if it is possible */
		if(rep->ttl < timenow) {
			/* the rrsets may have been updated in the meantime.
			 * we will refetch the message format from the
			 * authoritative server 
			 */
			return 0;
		}
		if(!FUNC11(rep->ref, rep->rrset_count, timenow))
			return 0;
		/* locked and ids and ttls are OK. */
	}
	/* check CNAME chain (if any) */
	if(rep->an_numrrsets > 0 && (rep->rrsets[0]->rk.type == 
		FUNC3(LDNS_RR_TYPE_CNAME) || rep->rrsets[0]->rk.type == 
		FUNC3(LDNS_RR_TYPE_DNAME))) {
		if(!FUNC7(qinfo, rep)) {
			/* cname chain invalid, redo iterator steps */
			FUNC16(VERB_ALGO, "Cache reply: cname chain broken");
			goto bail_out;
		}
	}
	/* check security status of the cached answer */
	if(must_validate && (rep->security == sec_status_bogus ||
		rep->security == sec_status_secure_sentinel_fail)) {
		/* BAD cached */
		edns->edns_version = EDNS_ADVERTISED_VERSION;
		edns->udp_size = EDNS_ADVERTISED_SIZE;
		edns->ext_rcode = 0;
		edns->bits &= EDNS_DO;
		if(!FUNC5(&worker->env, qinfo, NULL, rep,
			LDNS_RCODE_SERVFAIL, edns, repinfo, worker->scratchpad))
			goto bail_out;
		FUNC2(repinfo->c->buffer, LDNS_RCODE_SERVFAIL, 
			qinfo, id, flags, edns);
		FUNC12(worker->env.rrset_cache, 
			worker->scratchpad, rep->ref, rep->rrset_count);
		if(worker->stats.extended) {
			worker->stats.ans_bogus ++;
			worker->stats.ans_rcode[LDNS_RCODE_SERVFAIL] ++;
		}
		return 1;
	} else if( rep->security == sec_status_unchecked && must_validate) {
		FUNC16(VERB_ALGO, "Cache reply: unchecked entry needs "
			"validation");
		goto bail_out; /* need to validate cache entry first */
	} else if(rep->security == sec_status_secure) {
		if(FUNC6(rep))
			secure = 1;
		else	{
			if(must_validate) {
				FUNC16(VERB_ALGO, "Cache reply: secure entry"
					" changed status");
				goto bail_out; /* rrset changed, re-verify */
			}
			secure = 0;
		}
	} else	secure = 0;

	edns_bak = *edns;
	edns->edns_version = EDNS_ADVERTISED_VERSION;
	edns->udp_size = EDNS_ADVERTISED_SIZE;
	edns->ext_rcode = 0;
	edns->bits &= EDNS_DO;
	if(!FUNC4(&worker->env, qinfo, NULL, rep,
		(int)(flags&LDNS_RCODE_MASK), edns, repinfo, worker->scratchpad))
		goto bail_out;
	*alias_rrset = NULL; /* avoid confusion if caller set it to non-NULL */
	if(worker->daemon->use_response_ip && !partial_rep &&
	   !FUNC1(worker, qinfo, cinfo, rep, repinfo, alias_rrset,
			&encode_rep)) {
		goto bail_out;
	} else if(partial_rep &&
		!FUNC10(partial_rep, qinfo, rep, cinfo,
		must_validate, &encode_rep, worker->scratchpad)) {
		goto bail_out;
	}
	if(encode_rep != rep)
		secure = 0; /* if rewritten, it can't be considered "secure" */
	if(!encode_rep || *alias_rrset) {
		FUNC14(repinfo->c->buffer);
		FUNC15(repinfo->c->buffer);
		if(!encode_rep)
			*need_drop = 1;
		else {
			/* If a partial CNAME chain is found, we first need to
			 * make a copy of the reply in the scratchpad so we
			 * can release the locks and lookup the cache again. */
			*partial_repp = FUNC9(encode_rep, NULL,
				worker->scratchpad);
			if(!*partial_repp)
				goto bail_out;
		}
	} else if(!FUNC0(edns, &edns_bak, worker->env.cfg,
		repinfo->c, worker->scratchpad) ||
		!FUNC8(qinfo, encode_rep, id, flags,
		repinfo->c->buffer, timenow, 1, worker->scratchpad,
		udpsize, edns, (int)(edns->bits & EDNS_DO), secure)) {
		if(!FUNC5(&worker->env, qinfo, NULL, NULL,
			LDNS_RCODE_SERVFAIL, edns, repinfo, worker->scratchpad))
				edns->opt_list = NULL;
		FUNC2(repinfo->c->buffer, LDNS_RCODE_SERVFAIL, 
			qinfo, id, flags, edns);
	}
	/* cannot send the reply right now, because blocking network syscall
	 * is bad while holding locks. */
	FUNC12(worker->env.rrset_cache, worker->scratchpad,
		rep->ref, rep->rrset_count);
	if(worker->stats.extended) {
		if(secure) worker->stats.ans_secure++;
		FUNC13(&worker->stats, repinfo->c->buffer);
	}
	/* go and return this buffer to the client */
	return 1;

bail_out:
	FUNC12(worker->env.rrset_cache, 
		worker->scratchpad, rep->ref, rep->rrset_count);
	return 0;
}