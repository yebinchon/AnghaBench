#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ time_t ;
struct TYPE_17__ {scalar_t__* now; TYPE_4__* cfg; int /*<<< orphan*/  mesh; int /*<<< orphan*/  msg_cache; scalar_t__ auth_zones; int /*<<< orphan*/  rnd; int /*<<< orphan*/  infra_cache; } ;
struct TYPE_18__ {scalar_t__ log_client_response_messages; scalar_t__ log_client_query_messages; } ;
struct TYPE_27__ {scalar_t__ extended; int /*<<< orphan*/ * qtype; int /*<<< orphan*/  num_queries_ip_ratelimited; int /*<<< orphan*/  num_queries; int /*<<< orphan*/  num_query_dnscrypt_crypted; int /*<<< orphan*/  num_query_dnscrypt_cert; int /*<<< orphan*/  num_query_dnscrypt_cleartext; int /*<<< orphan*/  num_query_dnscrypt_crypted_malformed; } ;
struct worker {TYPE_11__ env; TYPE_13__ dtenv; int /*<<< orphan*/  scratchpad; TYPE_8__ stats; TYPE_3__* daemon; } ;
struct TYPE_24__ {scalar_t__ type; scalar_t__ dname; } ;
struct TYPE_21__ {struct packed_rrset_data* data; } ;
struct ub_packed_rrset_key {TYPE_5__ rk; TYPE_2__ entry; } ;
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct respip_client_info {int /*<<< orphan*/  respip_set; int /*<<< orphan*/  view; int /*<<< orphan*/  tag_datas_size; int /*<<< orphan*/  tag_datas; int /*<<< orphan*/  tag_actions_size; int /*<<< orphan*/  tag_actions; int /*<<< orphan*/  taglen; int /*<<< orphan*/  taglist; } ;
struct reply_info {scalar_t__ prefetch_ttl; scalar_t__ ttl; } ;
struct query_info {size_t qtype; scalar_t__ qclass; int edns_present; int udp_size; scalar_t__ edns_version; TYPE_6__* local_alias; scalar_t__ qname; scalar_t__ qname_len; int /*<<< orphan*/ * opt_list; int /*<<< orphan*/  bits; scalar_t__ ext_rcode; } ;
struct packed_rrset_data {int count; scalar_t__* rr_len; scalar_t__* rr_data; } ;
struct lruhash_entry {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct edns_option {scalar_t__ opt_len; } ;
struct edns_data {size_t qtype; scalar_t__ qclass; int edns_present; int udp_size; scalar_t__ edns_version; TYPE_6__* local_alias; scalar_t__ qname; scalar_t__ qname_len; int /*<<< orphan*/ * opt_list; int /*<<< orphan*/  bits; scalar_t__ ext_rcode; } ;
struct comm_reply {int max_udp_size; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; scalar_t__ is_dnscrypted; } ;
struct comm_point {int /*<<< orphan*/  buffer; int /*<<< orphan*/  type; scalar_t__ dnscrypt; } ;
struct acl_addr {int /*<<< orphan*/  view; int /*<<< orphan*/  tag_datas_size; int /*<<< orphan*/  tag_datas; int /*<<< orphan*/  tag_actions_size; int /*<<< orphan*/  tag_actions; int /*<<< orphan*/  taglen; int /*<<< orphan*/  taglist; } ;
typedef  int /*<<< orphan*/  reply_edns ;
typedef  int /*<<< orphan*/  qinfo_tmp ;
typedef  int /*<<< orphan*/  qinfo ;
typedef  int /*<<< orphan*/  ip ;
typedef  int /*<<< orphan*/  hashvalue_type ;
typedef  enum acl_access { ____Placeholder_acl_access } acl_access ;
typedef  int /*<<< orphan*/  addrbuf ;
struct TYPE_26__ {int /*<<< orphan*/  _name; } ;
struct TYPE_25__ {struct ub_packed_rrset_key* rrset; scalar_t__ next; } ;
struct TYPE_23__ {scalar_t__ ip_ratelimit_factor; scalar_t__ log_replies; scalar_t__ serve_expired; scalar_t__ prefetch; scalar_t__ log_queries; } ;
struct TYPE_22__ {int /*<<< orphan*/  respip_set; scalar_t__ use_response_ip; TYPE_1__* cfg; int /*<<< orphan*/  local_zones; int /*<<< orphan*/  acl; TYPE_15__* dnscenv; } ;
struct TYPE_20__ {int max_udp_size; int /*<<< orphan*/  num_tags; int /*<<< orphan*/  tagname; scalar_t__ harden_short_bufsize; } ;
struct TYPE_19__ {int /*<<< orphan*/  provider_name; } ;

/* Variables and functions */
 void* EDNS_ADVERTISED_SIZE ; 
 void* EDNS_ADVERTISED_VERSION ; 
 int /*<<< orphan*/  EDNS_DO ; 
 int EDNS_RCODE_BADVERS ; 
 int /*<<< orphan*/  LDNS_EDNS_KEEPALIVE ; 
 int LDNS_HEADER_SIZE ; 
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ LDNS_PACKET_NOTIFY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int LDNS_RCODE_FORMERR ; 
 int LDNS_RCODE_REFUSED ; 
 int LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ LDNS_RR_CLASS_CH ; 
 size_t LDNS_RR_TYPE_A ; 
 size_t LDNS_RR_TYPE_AAAA ; 
 size_t LDNS_RR_TYPE_ANY ; 
 size_t LDNS_RR_TYPE_AXFR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_CNAME ; 
 size_t LDNS_RR_TYPE_IXFR ; 
 size_t LDNS_RR_TYPE_MAILA ; 
 size_t LDNS_RR_TYPE_MAILB ; 
 size_t LDNS_RR_TYPE_OPT ; 
 size_t LDNS_RR_TYPE_TKEY ; 
 size_t LDNS_RR_TYPE_TSIG ; 
 size_t LDNS_RR_TYPE_TXT ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int NETEVENT_NOERROR ; 
 int NORMAL_UDP_SIZE ; 
 scalar_t__ VERB_ALGO ; 
 scalar_t__ VERB_CLIENT ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 struct acl_addr* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int acl_allow_setrd ; 
 int acl_allow_snoop ; 
 int acl_deny_non_local ; 
 int FUNC8 (struct acl_addr*) ; 
 int acl_refuse_non_local ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC10 (struct worker*,struct query_info*,struct query_info*,struct comm_reply*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct worker*,struct query_info*,struct respip_client_info*,int*,struct ub_packed_rrset_key**,struct reply_info**,struct reply_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*,struct query_info*) ; 
 scalar_t__ FUNC12 (struct worker*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*,struct query_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct worker*,struct query_info*,struct query_info*,int /*<<< orphan*/ ,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct query_info*) ; 
 scalar_t__ FUNC15 (scalar_t__,TYPE_11__*,struct query_info*,struct query_info*,struct comm_reply*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct query_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct comm_reply*) ; 
 int /*<<< orphan*/  comm_udp ; 
 int FUNC18 (struct comm_point*,int,struct worker*,struct comm_reply*) ; 
 int FUNC19 (struct comm_point*,int,struct worker*,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_15__*,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC22 (struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_13__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_13__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_11__*) ; 
 struct edns_option* FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct query_info*) ; 
 int /*<<< orphan*/  FUNC28 (struct ub_packed_rrset_key*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct comm_reply*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,TYPE_11__*,struct query_info*,struct query_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (char*,scalar_t__,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,struct query_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timeval,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct query_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,struct query_info*,struct respip_client_info*,int /*<<< orphan*/ ,struct query_info*,struct comm_reply*,int /*<<< orphan*/ ) ; 
 int FUNC39 (int /*<<< orphan*/ ,struct query_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct query_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct query_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct worker*,struct query_info*,int /*<<< orphan*/ ,struct comm_reply*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_8__*,struct comm_point*,size_t,scalar_t__,struct query_info*,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_8__*,struct worker*) ; 
 struct lruhash_entry* FUNC47 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct query_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC51 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 TYPE_7__* FUNC56 (size_t) ; 
 scalar_t__ FUNC57 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC58 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC59 (scalar_t__,char*,...) ; 
 scalar_t__ verbosity ; 
 int FUNC60 (int /*<<< orphan*/ ,struct worker*) ; 
 int FUNC61 (struct worker*,int) ; 
 int /*<<< orphan*/  FUNC62 (struct worker*,int /*<<< orphan*/ *) ; 

int 
FUNC63(struct comm_point* c, void* arg, int error,
	struct comm_reply* repinfo)
{
	struct worker* worker = (struct worker*)arg;
	int ret;
	hashvalue_type h;
	struct lruhash_entry* e;
	struct query_info qinfo;
	struct edns_data edns;
	enum acl_access acl;
	struct acl_addr* acladdr;
	int rc = 0;
	int need_drop = 0;
	/* We might have to chase a CNAME chain internally, in which case
	 * we'll have up to two replies and combine them to build a complete
	 * answer.  These variables control this case. */
	struct ub_packed_rrset_key* alias_rrset = NULL;
	struct reply_info* partial_rep = NULL;
	struct query_info* lookup_qinfo = &qinfo;
	struct query_info qinfo_tmp; /* placeholder for lookup_qinfo */
	struct respip_client_info* cinfo = NULL, cinfo_tmp;
	FUNC37(&qinfo, 0, sizeof(qinfo));

	if(error != NETEVENT_NOERROR) {
		/* some bad tcp query DNS formats give these error calls */
		FUNC59(VERB_ALGO, "handle request called with err=%d", error);
		return 0;
	}
#ifdef USE_DNSCRYPT
	repinfo->max_udp_size = worker->daemon->cfg->max_udp_size;
	if(!dnsc_handle_curved_request(worker->daemon->dnscenv, repinfo)) {
		worker->stats.num_query_dnscrypt_crypted_malformed++;
		return 0;
	}
	if(c->dnscrypt && !repinfo->is_dnscrypted) {
		char buf[LDNS_MAX_DOMAINLEN+1];
		/* Check if this is unencrypted and asking for certs */
		if(worker_check_request(c->buffer, worker) != 0) {
			verbose(VERB_ALGO,
				"dnscrypt: worker check request: bad query.");
			log_addr(VERB_CLIENT,"from",&repinfo->addr,
				repinfo->addrlen);
			comm_point_drop_reply(repinfo);
			return 0;
		}
		if(!query_info_parse(&qinfo, c->buffer)) {
			verbose(VERB_ALGO,
				"dnscrypt: worker parse request: formerror.");
			log_addr(VERB_CLIENT, "from", &repinfo->addr,
				repinfo->addrlen);
			comm_point_drop_reply(repinfo);
			return 0;
		}
		dname_str(qinfo.qname, buf);
		if(!(qinfo.qtype == LDNS_RR_TYPE_TXT &&
			strcasecmp(buf,
			worker->daemon->dnscenv->provider_name) == 0)) {
			verbose(VERB_ALGO,
				"dnscrypt: not TXT \"%s\". Received: %s \"%s\"",
				worker->daemon->dnscenv->provider_name,
				sldns_rr_descript(qinfo.qtype)->_name,
				buf);
			comm_point_drop_reply(repinfo);
			worker->stats.num_query_dnscrypt_cleartext++;
			return 0;
		}
		worker->stats.num_query_dnscrypt_cert++;
		sldns_buffer_rewind(c->buffer);
	} else if(c->dnscrypt && repinfo->is_dnscrypted) {
		worker->stats.num_query_dnscrypt_crypted++;
	}
#endif
#ifdef USE_DNSTAP
	if(worker->dtenv.log_client_query_messages)
		dt_msg_send_client_query(&worker->dtenv, &repinfo->addr, c->type,
			c->buffer);
#endif
	acladdr = FUNC7(worker->daemon->acl, &repinfo->addr, 
		repinfo->addrlen);
	acl = FUNC8(acladdr);
	if((ret=FUNC18(c, acl, worker, repinfo)) != -1)
	{
		if(ret == 1)
			goto send_reply;
		return ret;
	}
	if((ret=FUNC60(c->buffer, worker)) != 0) {
		FUNC59(VERB_ALGO, "worker check request: bad query.");
		FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
		if(ret != -1) {
			FUNC1(FUNC48(c->buffer));
			FUNC3(FUNC48(c->buffer), ret);
			return 1;
		}
		FUNC17(repinfo);
		return 0;
	}

	worker->stats.num_queries++;

	/* check if this query should be dropped based on source ip rate limiting */
	if(!FUNC30(worker->env.infra_cache, repinfo,
			*worker->env.now, c->buffer)) {
		/* See if we are passed through with slip factor */
		if(worker->env.cfg->ip_ratelimit_factor != 0 &&
			FUNC58(worker->env.rnd,
						  worker->env.cfg->ip_ratelimit_factor) == 0) {

			char addrbuf[128];
			FUNC9(&repinfo->addr, repinfo->addrlen,
						addrbuf, sizeof(addrbuf));
		  FUNC59(VERB_QUERY, "ip_ratelimit allowed through for ip address %s because of slip in ip_ratelimit_factor",
				  addrbuf);
		} else {
			worker->stats.num_queries_ip_ratelimited++;
			FUNC17(repinfo);
			return 0;
		}
	}

	/* see if query is in the cache */
	if(!FUNC41(&qinfo, c->buffer)) {
		FUNC59(VERB_ALGO, "worker parse request: formerror.");
		FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
		FUNC37(&qinfo, 0, sizeof(qinfo)); /* zero qinfo.qname */
		if(FUNC61(worker, LDNS_RCODE_FORMERR) == -1) {
			FUNC17(repinfo);
			return 0;
		}
		FUNC53(c->buffer);
		FUNC1(FUNC48(c->buffer));
		FUNC3(FUNC48(c->buffer), 
			LDNS_RCODE_FORMERR);
		FUNC45(&worker->stats, c->buffer);
		goto send_reply;
	}
	if(worker->env.cfg->log_queries) {
		char ip[128];
		FUNC9(&repinfo->addr, repinfo->addrlen, ip, sizeof(ip));
		FUNC35(ip, qinfo.qname, qinfo.qtype, qinfo.qclass);
	}
	if(qinfo.qtype == LDNS_RR_TYPE_AXFR || 
		qinfo.qtype == LDNS_RR_TYPE_IXFR) {
		FUNC59(VERB_ALGO, "worker request: refused zone transfer.");
		FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
		FUNC53(c->buffer);
		FUNC1(FUNC48(c->buffer));
		FUNC3(FUNC48(c->buffer), 
			LDNS_RCODE_REFUSED);
		if(worker->stats.extended) {
			worker->stats.qtype[qinfo.qtype]++;
			FUNC45(&worker->stats, c->buffer);
		}
		goto send_reply;
	}
	if(qinfo.qtype == LDNS_RR_TYPE_OPT || 
		qinfo.qtype == LDNS_RR_TYPE_TSIG ||
		qinfo.qtype == LDNS_RR_TYPE_TKEY ||
		qinfo.qtype == LDNS_RR_TYPE_MAILA ||
		qinfo.qtype == LDNS_RR_TYPE_MAILB ||
		(qinfo.qtype >= 128 && qinfo.qtype <= 248)) {
		FUNC59(VERB_ALGO, "worker request: formerror for meta-type.");
		FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
		if(FUNC61(worker, LDNS_RCODE_FORMERR) == -1) {
			FUNC17(repinfo);
			return 0;
		}
		FUNC53(c->buffer);
		FUNC1(FUNC48(c->buffer));
		FUNC3(FUNC48(c->buffer), 
			LDNS_RCODE_FORMERR);
		if(worker->stats.extended) {
			worker->stats.qtype[qinfo.qtype]++;
			FUNC45(&worker->stats, c->buffer);
		}
		goto send_reply;
	}
	if((ret=FUNC39(c->buffer, &edns, worker->scratchpad)) != 0) {
		struct edns_data reply_edns;
		FUNC59(VERB_ALGO, "worker parse edns: formerror.");
		FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
		FUNC37(&reply_edns, 0, sizeof(reply_edns));
		reply_edns.edns_present = 1;
		reply_edns.udp_size = EDNS_ADVERTISED_SIZE;
		FUNC3(FUNC48(c->buffer), ret);
		FUNC27(c->buffer, ret, &qinfo,
			*(uint16_t*)(void *)FUNC48(c->buffer),
			FUNC52(c->buffer, 2), &reply_edns);
		FUNC42(worker->scratchpad);
		FUNC45(&worker->stats, c->buffer);
		goto send_reply;
	}
	if(edns.edns_present) {
		struct edns_option* edns_opt;
		if(edns.edns_version != 0) {
			edns.ext_rcode = (uint8_t)(EDNS_RCODE_BADVERS>>4);
			edns.edns_version = EDNS_ADVERTISED_VERSION;
			edns.udp_size = EDNS_ADVERTISED_SIZE;
			edns.bits &= EDNS_DO;
			edns.opt_list = NULL;
			FUNC59(VERB_ALGO, "query with bad edns version.");
			FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
			FUNC27(c->buffer, EDNS_RCODE_BADVERS&0xf, &qinfo,
				*(uint16_t*)(void *)FUNC48(c->buffer),
				FUNC52(c->buffer, 2), NULL);
			if(FUNC49(c->buffer) >=
			   FUNC51(c->buffer)+FUNC16(&edns))
				FUNC14(c->buffer, &edns);
			FUNC42(worker->scratchpad);
			goto send_reply;
		}
		if(edns.udp_size < NORMAL_UDP_SIZE &&
		   worker->daemon->cfg->harden_short_bufsize) {
			FUNC59(VERB_QUERY, "worker request: EDNS bufsize %d ignored",
				(int)edns.udp_size);
			FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
			edns.udp_size = NORMAL_UDP_SIZE;
		}
		if(c->type != comm_udp) {
			edns_opt = FUNC26(edns.opt_list, LDNS_EDNS_KEEPALIVE);
			if(edns_opt && edns_opt->opt_len > 0) {
				edns.ext_rcode = 0;
				edns.edns_version = EDNS_ADVERTISED_VERSION;
				edns.udp_size = EDNS_ADVERTISED_SIZE;
				edns.bits &= EDNS_DO;
				edns.opt_list = NULL;
				FUNC59(VERB_ALGO, "query with bad edns keepalive.");
				FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
				FUNC27(c->buffer, LDNS_RCODE_FORMERR, &qinfo,
					*(uint16_t*)(void *)FUNC48(c->buffer),
					FUNC52(c->buffer, 2), NULL);
				if(FUNC49(c->buffer) >=
				   FUNC51(c->buffer)+FUNC16(&edns))
					FUNC14(c->buffer, &edns);
				FUNC42(worker->scratchpad);
				goto send_reply;
			}
		}
	}
	if(edns.udp_size > worker->daemon->cfg->max_udp_size &&
		c->type == comm_udp) {
		FUNC59(VERB_QUERY,
			"worker request: max UDP reply size modified"
			" (%d to max-udp-size)", (int)edns.udp_size);
		FUNC33(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
		edns.udp_size = worker->daemon->cfg->max_udp_size;
	}
	if(edns.udp_size < LDNS_HEADER_SIZE) {
		FUNC59(VERB_ALGO, "worker request: edns is too small.");
		FUNC33(VERB_CLIENT, "from", &repinfo->addr, repinfo->addrlen);
		FUNC1(FUNC48(c->buffer));
		FUNC6(FUNC48(c->buffer));
		FUNC3(FUNC48(c->buffer), 
			LDNS_RCODE_SERVFAIL);
		FUNC54(c->buffer, LDNS_HEADER_SIZE);
		FUNC55(c->buffer, 4, 
			(uint8_t*)"\0\0\0\0\0\0\0\0", 8);
		FUNC50(c->buffer);
		FUNC42(worker->scratchpad);
		goto send_reply;
	}
	if(worker->stats.extended)
		FUNC44(&worker->stats, c, qinfo.qtype,
			qinfo.qclass, &edns, repinfo);
	if(c->type != comm_udp)
		edns.udp_size = 65535; /* max size for TCP replies */
	if(qinfo.qclass == LDNS_RR_CLASS_CH && FUNC10(worker, &qinfo,
		&edns, repinfo, c->buffer)) {
		FUNC45(&worker->stats, c->buffer);
		FUNC42(worker->scratchpad);
		goto send_reply;
	}
	if(FUNC0(FUNC48(c->buffer)) ==
		LDNS_PACKET_NOTIFY) {
		FUNC13(worker, &qinfo, &edns, c->buffer, repinfo);
		FUNC42(worker->scratchpad);
		goto send_reply;
	}
	if(FUNC31(worker->daemon->local_zones, &worker->env, &qinfo,
		&edns, c->buffer, worker->scratchpad, repinfo, acladdr->taglist,
		acladdr->taglen, acladdr->tag_actions,
		acladdr->tag_actions_size, acladdr->tag_datas,
		acladdr->tag_datas_size, worker->daemon->cfg->tagname,
		worker->daemon->cfg->num_tags, acladdr->view)) {
		FUNC42(worker->scratchpad);
		if(FUNC51(c->buffer) == 0) {
			FUNC17(repinfo);
			return 0;
		}
		FUNC45(&worker->stats, c->buffer);
		goto send_reply;
	}
	if(worker->env.auth_zones &&
		FUNC15(worker->env.auth_zones, &worker->env,
		&qinfo, &edns, repinfo, c->buffer, worker->scratchpad)) {
		FUNC42(worker->scratchpad);
		if(FUNC51(c->buffer) == 0) {
			FUNC17(repinfo);
			return 0;
		}
		/* set RA for everyone that can have recursion (based on
		 * access control list) */
		if(FUNC5(FUNC48(c->buffer)) &&
		   acl != acl_deny_non_local && acl != acl_refuse_non_local)
			FUNC2(FUNC48(c->buffer));
		FUNC45(&worker->stats, c->buffer);
		goto send_reply;
	}

	/* We've looked in our local zones. If the answer isn't there, we
	 * might need to bail out based on ACLs now. */
	if((ret=FUNC19(c, acl, worker, repinfo)) != -1)
	{
		FUNC42(worker->scratchpad);
		if(ret == 1)
			goto send_reply;
		return ret;
	}

	/* If this request does not have the recursion bit set, verify
	 * ACLs allow the recursion bit to be treated as set. */
	if(!(FUNC5(FUNC48(c->buffer))) &&
		acl == acl_allow_setrd ) {
		FUNC4(FUNC48(c->buffer));
	}

	/* If this request does not have the recursion bit set, verify
	 * ACLs allow the snooping. */
	if(!(FUNC5(FUNC48(c->buffer))) &&
		acl != acl_allow_snoop ) {
		FUNC27(c->buffer, LDNS_RCODE_REFUSED, &qinfo,
			*(uint16_t*)(void *)FUNC48(c->buffer),
			FUNC52(c->buffer, 2), NULL);
		FUNC42(worker->scratchpad);
		FUNC45(&worker->stats, c->buffer);
		FUNC33(VERB_ALGO, "refused nonrec (cache snoop) query from",
			&repinfo->addr, repinfo->addrlen);
		goto send_reply;
	}

	/* If we've found a local alias, replace the qname with the alias
	 * target before resolving it. */
	if(qinfo.local_alias) {
		struct ub_packed_rrset_key* rrset = qinfo.local_alias->rrset;
		struct packed_rrset_data* d = rrset->entry.data;

		/* Sanity check: our current implementation only supports
		 * a single CNAME RRset as a local alias. */
		if(qinfo.local_alias->next ||
			rrset->rk.type != FUNC29(LDNS_RR_TYPE_CNAME) ||
			d->count != 1) {
			FUNC34("assumption failure: unexpected local alias");
			FUNC42(worker->scratchpad);
			return 0; /* drop it */
		}
		qinfo.qname = d->rr_data[0] + 2;
		qinfo.qname_len = d->rr_len[0] - 2;
	}

	/* If we may apply IP-based actions to the answer, build the client
	 * information.  As this can be expensive, skip it if there is
	 * absolutely no possibility of it. */
	if(worker->daemon->use_response_ip &&
		(qinfo.qtype == LDNS_RR_TYPE_A ||
		qinfo.qtype == LDNS_RR_TYPE_AAAA ||
		qinfo.qtype == LDNS_RR_TYPE_ANY)) {
		cinfo_tmp.taglist = acladdr->taglist;
		cinfo_tmp.taglen = acladdr->taglen;
		cinfo_tmp.tag_actions = acladdr->tag_actions;
		cinfo_tmp.tag_actions_size = acladdr->tag_actions_size;
		cinfo_tmp.tag_datas = acladdr->tag_datas;
		cinfo_tmp.tag_datas_size = acladdr->tag_datas_size;
		cinfo_tmp.view = acladdr->view;
		cinfo_tmp.respip_set = worker->daemon->respip_set;
		cinfo = &cinfo_tmp;
	}

lookup_cache:
	/* Lookup the cache.  In case we chase an intermediate CNAME chain
	 * this is a two-pass operation, and lookup_qinfo is different for
	 * each pass.  We should still pass the original qinfo to
	 * answer_from_cache(), however, since it's used to build the reply. */
	if(!FUNC25(edns.opt_list, &worker->env)) {
		h = FUNC40(lookup_qinfo, FUNC52(c->buffer, 2));
		if((e=FUNC47(worker->env.msg_cache, h, lookup_qinfo, 0))) {
			/* answer from cache - we have acquired a readlock on it */
			if(FUNC11(worker, &qinfo,
				cinfo, &need_drop, &alias_rrset, &partial_rep,
				(struct reply_info*)e->data,
				*(uint16_t*)(void *)FUNC48(c->buffer),
				FUNC52(c->buffer, 2), repinfo,
				&edns)) {
				/* prefetch it if the prefetch TTL expired.
				 * Note that if there is more than one pass
				 * its qname must be that used for cache
				 * lookup. */
				if((worker->env.cfg->prefetch || worker->env.cfg->serve_expired)
					&& *worker->env.now >=
					((struct reply_info*)e->data)->prefetch_ttl) {
					time_t leeway = ((struct reply_info*)e->
						data)->ttl - *worker->env.now;
					if(((struct reply_info*)e->data)->ttl
						< *worker->env.now)
						leeway = 0;
					FUNC32(&e->lock);
					FUNC43(worker, lookup_qinfo,
						FUNC52(c->buffer, 2),
						repinfo, leeway);
					if(!partial_rep) {
						rc = 0;
						FUNC42(worker->scratchpad);
						goto send_reply_rc;
					}
				} else if(!partial_rep) {
					FUNC32(&e->lock);
					FUNC42(worker->scratchpad);
					goto send_reply;
				} else {
					/* Note that we've already released the
					 * lock if we're here after prefetch. */
					FUNC32(&e->lock);
				}
				/* We've found a partial reply ending with an
				 * alias.  Replace the lookup qinfo for the
				 * alias target and lookup the cache again to
				 * (possibly) complete the reply.  As we're
				 * passing the "base" reply, there will be no
				 * more alias chasing. */
				FUNC37(&qinfo_tmp, 0, sizeof(qinfo_tmp));
				FUNC28(alias_rrset, &qinfo_tmp.qname,
					&qinfo_tmp.qname_len);
				if(!qinfo_tmp.qname) {
					FUNC34("unexpected: invalid answer alias");
					FUNC42(worker->scratchpad);
					return 0; /* drop query */
				}
				qinfo_tmp.qtype = qinfo.qtype;
				qinfo_tmp.qclass = qinfo.qclass;
				lookup_qinfo = &qinfo_tmp;
				goto lookup_cache;
			}
			FUNC59(VERB_ALGO, "answer from the cache failed");
			FUNC32(&e->lock);
		}
		if(!FUNC5(FUNC48(c->buffer))) {
			if(FUNC12(worker, &qinfo,
				*(uint16_t*)(void *)FUNC48(c->buffer), 
				FUNC52(c->buffer, 2), repinfo, 
				&edns)) {
				FUNC42(worker->scratchpad);
				goto send_reply;
			}
			FUNC59(VERB_ALGO, "answer norec from cache -- "
				"need to validate or not primed");
		}
	}
	FUNC53(c->buffer);
	FUNC46(&worker->stats, worker);

	if(verbosity >= VERB_CLIENT) {
		if(c->type == comm_udp)
			FUNC33(VERB_CLIENT, "udp request from",
				&repinfo->addr, repinfo->addrlen);
		else	FUNC33(VERB_CLIENT, "tcp request from",
				&repinfo->addr, repinfo->addrlen);
	}

	/* grab a work request structure for this new request */
	FUNC38(worker->env.mesh, &qinfo, cinfo,
		FUNC52(c->buffer, 2),
		&edns, repinfo, *(uint16_t*)(void *)FUNC48(c->buffer));
	FUNC42(worker->scratchpad);
	FUNC62(worker, NULL);
	return 0;

send_reply:
	rc = 1;
send_reply_rc:
	if(need_drop) {
		FUNC17(repinfo);
		return 0;
	}
#ifdef USE_DNSTAP
	if(worker->dtenv.log_client_response_messages)
		dt_msg_send_client_response(&worker->dtenv, &repinfo->addr,
			c->type, c->buffer);
#endif
	if(worker->env.cfg->log_replies)
	{
		struct timeval tv = {0, 0};
		if(qinfo.local_alias && qinfo.local_alias->rrset &&
			qinfo.local_alias->rrset->rk.dname) {
			/* log original qname, before the local alias was
			 * used to resolve that CNAME to something else */
			qinfo.qname = qinfo.local_alias->rrset->rk.dname;
			FUNC36(0, &qinfo, &repinfo->addr, repinfo->addrlen,
				tv, 1, c->buffer);
		} else {
			FUNC36(0, &qinfo, &repinfo->addr, repinfo->addrlen,
				tv, 1, c->buffer);
		}
	}
#ifdef USE_DNSCRYPT
	if(!dnsc_handle_uncurved_request(repinfo)) {
		return 0;
	}
#endif
	return rc;
}