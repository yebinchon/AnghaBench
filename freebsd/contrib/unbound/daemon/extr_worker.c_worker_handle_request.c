
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_11__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct TYPE_17__ {scalar_t__* now; TYPE_4__* cfg; int mesh; int msg_cache; scalar_t__ auth_zones; int rnd; int infra_cache; } ;
struct TYPE_18__ {scalar_t__ log_client_response_messages; scalar_t__ log_client_query_messages; } ;
struct TYPE_27__ {scalar_t__ extended; int * qtype; int num_queries_ip_ratelimited; int num_queries; int num_query_dnscrypt_crypted; int num_query_dnscrypt_cert; int num_query_dnscrypt_cleartext; int num_query_dnscrypt_crypted_malformed; } ;
struct worker {TYPE_11__ env; TYPE_13__ dtenv; int scratchpad; TYPE_8__ stats; TYPE_3__* daemon; } ;
struct TYPE_24__ {scalar_t__ type; scalar_t__ dname; } ;
struct TYPE_21__ {struct packed_rrset_data* data; } ;
struct ub_packed_rrset_key {TYPE_5__ rk; TYPE_2__ entry; } ;
struct timeval {int member_1; int member_0; } ;
struct respip_client_info {int respip_set; int view; int tag_datas_size; int tag_datas; int tag_actions_size; int tag_actions; int taglen; int taglist; } ;
struct reply_info {scalar_t__ prefetch_ttl; scalar_t__ ttl; } ;
struct query_info {size_t qtype; scalar_t__ qclass; int edns_present; int udp_size; scalar_t__ edns_version; TYPE_6__* local_alias; scalar_t__ qname; scalar_t__ qname_len; int * opt_list; int bits; scalar_t__ ext_rcode; } ;
struct packed_rrset_data {int count; scalar_t__* rr_len; scalar_t__* rr_data; } ;
struct lruhash_entry {int lock; scalar_t__ data; } ;
struct edns_option {scalar_t__ opt_len; } ;
struct edns_data {size_t qtype; scalar_t__ qclass; int edns_present; int udp_size; scalar_t__ edns_version; TYPE_6__* local_alias; scalar_t__ qname; scalar_t__ qname_len; int * opt_list; int bits; scalar_t__ ext_rcode; } ;
struct comm_reply {int max_udp_size; int addrlen; int addr; scalar_t__ is_dnscrypted; } ;
struct comm_point {int buffer; int type; scalar_t__ dnscrypt; } ;
struct acl_addr {int view; int tag_datas_size; int tag_datas; int tag_actions_size; int tag_actions; int taglen; int taglist; } ;
typedef int reply_edns ;
typedef int qinfo_tmp ;
typedef int qinfo ;
typedef int ip ;
typedef int hashvalue_type ;
typedef enum acl_access { ____Placeholder_acl_access } acl_access ;
typedef int addrbuf ;
struct TYPE_26__ {int _name; } ;
struct TYPE_25__ {struct ub_packed_rrset_key* rrset; scalar_t__ next; } ;
struct TYPE_23__ {scalar_t__ ip_ratelimit_factor; scalar_t__ log_replies; scalar_t__ serve_expired; scalar_t__ prefetch; scalar_t__ log_queries; } ;
struct TYPE_22__ {int respip_set; scalar_t__ use_response_ip; TYPE_1__* cfg; int local_zones; int acl; TYPE_15__* dnscenv; } ;
struct TYPE_20__ {int max_udp_size; int num_tags; int tagname; scalar_t__ harden_short_bufsize; } ;
struct TYPE_19__ {int provider_name; } ;


 void* EDNS_ADVERTISED_SIZE ;
 void* EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 int EDNS_RCODE_BADVERS ;
 int LDNS_EDNS_KEEPALIVE ;
 int LDNS_HEADER_SIZE ;
 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ LDNS_OPCODE_WIRE (scalar_t__) ;
 scalar_t__ LDNS_PACKET_NOTIFY ;
 int LDNS_QR_SET (scalar_t__) ;
 int LDNS_RA_SET (scalar_t__) ;
 int LDNS_RCODE_FORMERR ;
 int LDNS_RCODE_REFUSED ;
 int LDNS_RCODE_SERVFAIL ;
 int LDNS_RCODE_SET (scalar_t__,int) ;
 int LDNS_RD_SET (scalar_t__) ;
 scalar_t__ LDNS_RD_WIRE (scalar_t__) ;
 scalar_t__ LDNS_RR_CLASS_CH ;
 size_t LDNS_RR_TYPE_A ;
 size_t LDNS_RR_TYPE_AAAA ;
 size_t LDNS_RR_TYPE_ANY ;
 size_t LDNS_RR_TYPE_AXFR ;
 int LDNS_RR_TYPE_CNAME ;
 size_t LDNS_RR_TYPE_IXFR ;
 size_t LDNS_RR_TYPE_MAILA ;
 size_t LDNS_RR_TYPE_MAILB ;
 size_t LDNS_RR_TYPE_OPT ;
 size_t LDNS_RR_TYPE_TKEY ;
 size_t LDNS_RR_TYPE_TSIG ;
 size_t LDNS_RR_TYPE_TXT ;
 int LDNS_TC_SET (scalar_t__) ;
 int NETEVENT_NOERROR ;
 int NORMAL_UDP_SIZE ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ VERB_CLIENT ;
 int VERB_QUERY ;
 struct acl_addr* acl_addr_lookup (int ,int *,int ) ;
 int acl_allow_setrd ;
 int acl_allow_snoop ;
 int acl_deny_non_local ;
 int acl_get_control (struct acl_addr*) ;
 int acl_refuse_non_local ;
 int addr_to_str (int *,int ,char*,int) ;
 scalar_t__ answer_chaos (struct worker*,struct query_info*,struct query_info*,struct comm_reply*,int ) ;
 scalar_t__ answer_from_cache (struct worker*,struct query_info*,struct respip_client_info*,int*,struct ub_packed_rrset_key**,struct reply_info**,struct reply_info*,int ,int ,struct comm_reply*,struct query_info*) ;
 scalar_t__ answer_norec_from_cache (struct worker*,struct query_info*,int ,int ,struct comm_reply*,struct query_info*) ;
 int answer_notify (struct worker*,struct query_info*,struct query_info*,int ,struct comm_reply*) ;
 int attach_edns_record (int ,struct query_info*) ;
 scalar_t__ auth_zones_answer (scalar_t__,TYPE_11__*,struct query_info*,struct query_info*,struct comm_reply*,int ,int ) ;
 scalar_t__ calc_edns_field_size (struct query_info*) ;
 int comm_point_drop_reply (struct comm_reply*) ;
 int comm_udp ;
 int deny_refuse_all (struct comm_point*,int,struct worker*,struct comm_reply*) ;
 int deny_refuse_non_local (struct comm_point*,int,struct worker*,struct comm_reply*) ;
 int dname_str (scalar_t__,char*) ;
 int dnsc_handle_curved_request (TYPE_15__*,struct comm_reply*) ;
 int dnsc_handle_uncurved_request (struct comm_reply*) ;
 int dt_msg_send_client_query (TYPE_13__*,int *,int ,int ) ;
 int dt_msg_send_client_response (TYPE_13__*,int *,int ,int ) ;
 int edns_bypass_cache_stage (int *,TYPE_11__*) ;
 struct edns_option* edns_opt_list_find (int *,int ) ;
 int error_encode (int ,int,struct query_info*,int ,int ,struct query_info*) ;
 int get_cname_target (struct ub_packed_rrset_key*,scalar_t__*,scalar_t__*) ;
 scalar_t__ htons (int ) ;
 int infra_ip_ratelimit_inc (int ,struct comm_reply*,scalar_t__,int ) ;
 scalar_t__ local_zones_answer (int ,TYPE_11__*,struct query_info*,struct query_info*,int ,int ,struct comm_reply*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int lock_rw_unlock (int *) ;
 int log_addr (scalar_t__,char*,int *,int ) ;
 int log_err (char*) ;
 int log_query_in (char*,scalar_t__,size_t,scalar_t__) ;
 int log_reply_info (int ,struct query_info*,int *,int ,struct timeval,int,int ) ;
 int memset (struct query_info*,int ,int) ;
 int mesh_new_client (int ,struct query_info*,struct respip_client_info*,int ,struct query_info*,struct comm_reply*,int ) ;
 int parse_edns_from_pkt (int ,struct query_info*,int ) ;
 int query_info_hash (struct query_info*,int ) ;
 int query_info_parse (struct query_info*,int ) ;
 int regional_free_all (int ) ;
 int reply_and_prefetch (struct worker*,struct query_info*,int ,struct comm_reply*,scalar_t__) ;
 int server_stats_insquery (TYPE_8__*,struct comm_point*,size_t,scalar_t__,struct query_info*,struct comm_reply*) ;
 int server_stats_insrcode (TYPE_8__*,int ) ;
 int server_stats_querymiss (TYPE_8__*,struct worker*) ;
 struct lruhash_entry* slabhash_lookup (int ,int ,struct query_info*,int ) ;
 scalar_t__ sldns_buffer_begin (int ) ;
 scalar_t__ sldns_buffer_capacity (int ) ;
 int sldns_buffer_flip (int ) ;
 scalar_t__ sldns_buffer_limit (int ) ;
 int sldns_buffer_read_u16_at (int ,int) ;
 int sldns_buffer_rewind (int ) ;
 int sldns_buffer_set_position (int ,int) ;
 int sldns_buffer_write_at (int ,int,scalar_t__*,int) ;
 TYPE_7__* sldns_rr_descript (size_t) ;
 scalar_t__ strcasecmp (char*,int ) ;
 scalar_t__ ub_random_max (int ,scalar_t__) ;
 int verbose (scalar_t__,char*,...) ;
 scalar_t__ verbosity ;
 int worker_check_request (int ,struct worker*) ;
 int worker_err_ratelimit (struct worker*,int) ;
 int worker_mem_report (struct worker*,int *) ;

int
worker_handle_request(struct comm_point* c, void* arg, int error,
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



 struct ub_packed_rrset_key* alias_rrset = ((void*)0);
 struct reply_info* partial_rep = ((void*)0);
 struct query_info* lookup_qinfo = &qinfo;
 struct query_info qinfo_tmp;
 struct respip_client_info* cinfo = ((void*)0), cinfo_tmp;
 memset(&qinfo, 0, sizeof(qinfo));

 if(error != NETEVENT_NOERROR) {

  verbose(VERB_ALGO, "handle request called with err=%d", error);
  return 0;
 }
 acladdr = acl_addr_lookup(worker->daemon->acl, &repinfo->addr,
  repinfo->addrlen);
 acl = acl_get_control(acladdr);
 if((ret=deny_refuse_all(c, acl, worker, repinfo)) != -1)
 {
  if(ret == 1)
   goto send_reply;
  return ret;
 }
 if((ret=worker_check_request(c->buffer, worker)) != 0) {
  verbose(VERB_ALGO, "worker check request: bad query.");
  log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
  if(ret != -1) {
   LDNS_QR_SET(sldns_buffer_begin(c->buffer));
   LDNS_RCODE_SET(sldns_buffer_begin(c->buffer), ret);
   return 1;
  }
  comm_point_drop_reply(repinfo);
  return 0;
 }

 worker->stats.num_queries++;


 if(!infra_ip_ratelimit_inc(worker->env.infra_cache, repinfo,
   *worker->env.now, c->buffer)) {

  if(worker->env.cfg->ip_ratelimit_factor != 0 &&
   ub_random_max(worker->env.rnd,
        worker->env.cfg->ip_ratelimit_factor) == 0) {

   char addrbuf[128];
   addr_to_str(&repinfo->addr, repinfo->addrlen,
      addrbuf, sizeof(addrbuf));
    verbose(VERB_QUERY, "ip_ratelimit allowed through for ip address %s because of slip in ip_ratelimit_factor",
      addrbuf);
  } else {
   worker->stats.num_queries_ip_ratelimited++;
   comm_point_drop_reply(repinfo);
   return 0;
  }
 }


 if(!query_info_parse(&qinfo, c->buffer)) {
  verbose(VERB_ALGO, "worker parse request: formerror.");
  log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
  memset(&qinfo, 0, sizeof(qinfo));
  if(worker_err_ratelimit(worker, LDNS_RCODE_FORMERR) == -1) {
   comm_point_drop_reply(repinfo);
   return 0;
  }
  sldns_buffer_rewind(c->buffer);
  LDNS_QR_SET(sldns_buffer_begin(c->buffer));
  LDNS_RCODE_SET(sldns_buffer_begin(c->buffer),
   LDNS_RCODE_FORMERR);
  server_stats_insrcode(&worker->stats, c->buffer);
  goto send_reply;
 }
 if(worker->env.cfg->log_queries) {
  char ip[128];
  addr_to_str(&repinfo->addr, repinfo->addrlen, ip, sizeof(ip));
  log_query_in(ip, qinfo.qname, qinfo.qtype, qinfo.qclass);
 }
 if(qinfo.qtype == LDNS_RR_TYPE_AXFR ||
  qinfo.qtype == LDNS_RR_TYPE_IXFR) {
  verbose(VERB_ALGO, "worker request: refused zone transfer.");
  log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
  sldns_buffer_rewind(c->buffer);
  LDNS_QR_SET(sldns_buffer_begin(c->buffer));
  LDNS_RCODE_SET(sldns_buffer_begin(c->buffer),
   LDNS_RCODE_REFUSED);
  if(worker->stats.extended) {
   worker->stats.qtype[qinfo.qtype]++;
   server_stats_insrcode(&worker->stats, c->buffer);
  }
  goto send_reply;
 }
 if(qinfo.qtype == LDNS_RR_TYPE_OPT ||
  qinfo.qtype == LDNS_RR_TYPE_TSIG ||
  qinfo.qtype == LDNS_RR_TYPE_TKEY ||
  qinfo.qtype == LDNS_RR_TYPE_MAILA ||
  qinfo.qtype == LDNS_RR_TYPE_MAILB ||
  (qinfo.qtype >= 128 && qinfo.qtype <= 248)) {
  verbose(VERB_ALGO, "worker request: formerror for meta-type.");
  log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
  if(worker_err_ratelimit(worker, LDNS_RCODE_FORMERR) == -1) {
   comm_point_drop_reply(repinfo);
   return 0;
  }
  sldns_buffer_rewind(c->buffer);
  LDNS_QR_SET(sldns_buffer_begin(c->buffer));
  LDNS_RCODE_SET(sldns_buffer_begin(c->buffer),
   LDNS_RCODE_FORMERR);
  if(worker->stats.extended) {
   worker->stats.qtype[qinfo.qtype]++;
   server_stats_insrcode(&worker->stats, c->buffer);
  }
  goto send_reply;
 }
 if((ret=parse_edns_from_pkt(c->buffer, &edns, worker->scratchpad)) != 0) {
  struct edns_data reply_edns;
  verbose(VERB_ALGO, "worker parse edns: formerror.");
  log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
  memset(&reply_edns, 0, sizeof(reply_edns));
  reply_edns.edns_present = 1;
  reply_edns.udp_size = EDNS_ADVERTISED_SIZE;
  LDNS_RCODE_SET(sldns_buffer_begin(c->buffer), ret);
  error_encode(c->buffer, ret, &qinfo,
   *(uint16_t*)(void *)sldns_buffer_begin(c->buffer),
   sldns_buffer_read_u16_at(c->buffer, 2), &reply_edns);
  regional_free_all(worker->scratchpad);
  server_stats_insrcode(&worker->stats, c->buffer);
  goto send_reply;
 }
 if(edns.edns_present) {
  struct edns_option* edns_opt;
  if(edns.edns_version != 0) {
   edns.ext_rcode = (uint8_t)(EDNS_RCODE_BADVERS>>4);
   edns.edns_version = EDNS_ADVERTISED_VERSION;
   edns.udp_size = EDNS_ADVERTISED_SIZE;
   edns.bits &= EDNS_DO;
   edns.opt_list = ((void*)0);
   verbose(VERB_ALGO, "query with bad edns version.");
   log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
   error_encode(c->buffer, EDNS_RCODE_BADVERS&0xf, &qinfo,
    *(uint16_t*)(void *)sldns_buffer_begin(c->buffer),
    sldns_buffer_read_u16_at(c->buffer, 2), ((void*)0));
   if(sldns_buffer_capacity(c->buffer) >=
      sldns_buffer_limit(c->buffer)+calc_edns_field_size(&edns))
    attach_edns_record(c->buffer, &edns);
   regional_free_all(worker->scratchpad);
   goto send_reply;
  }
  if(edns.udp_size < NORMAL_UDP_SIZE &&
     worker->daemon->cfg->harden_short_bufsize) {
   verbose(VERB_QUERY, "worker request: EDNS bufsize %d ignored",
    (int)edns.udp_size);
   log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
   edns.udp_size = NORMAL_UDP_SIZE;
  }
  if(c->type != comm_udp) {
   edns_opt = edns_opt_list_find(edns.opt_list, LDNS_EDNS_KEEPALIVE);
   if(edns_opt && edns_opt->opt_len > 0) {
    edns.ext_rcode = 0;
    edns.edns_version = EDNS_ADVERTISED_VERSION;
    edns.udp_size = EDNS_ADVERTISED_SIZE;
    edns.bits &= EDNS_DO;
    edns.opt_list = ((void*)0);
    verbose(VERB_ALGO, "query with bad edns keepalive.");
    log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
    error_encode(c->buffer, LDNS_RCODE_FORMERR, &qinfo,
     *(uint16_t*)(void *)sldns_buffer_begin(c->buffer),
     sldns_buffer_read_u16_at(c->buffer, 2), ((void*)0));
    if(sldns_buffer_capacity(c->buffer) >=
       sldns_buffer_limit(c->buffer)+calc_edns_field_size(&edns))
     attach_edns_record(c->buffer, &edns);
    regional_free_all(worker->scratchpad);
    goto send_reply;
   }
  }
 }
 if(edns.udp_size > worker->daemon->cfg->max_udp_size &&
  c->type == comm_udp) {
  verbose(VERB_QUERY,
   "worker request: max UDP reply size modified"
   " (%d to max-udp-size)", (int)edns.udp_size);
  log_addr(VERB_CLIENT,"from",&repinfo->addr, repinfo->addrlen);
  edns.udp_size = worker->daemon->cfg->max_udp_size;
 }
 if(edns.udp_size < LDNS_HEADER_SIZE) {
  verbose(VERB_ALGO, "worker request: edns is too small.");
  log_addr(VERB_CLIENT, "from", &repinfo->addr, repinfo->addrlen);
  LDNS_QR_SET(sldns_buffer_begin(c->buffer));
  LDNS_TC_SET(sldns_buffer_begin(c->buffer));
  LDNS_RCODE_SET(sldns_buffer_begin(c->buffer),
   LDNS_RCODE_SERVFAIL);
  sldns_buffer_set_position(c->buffer, LDNS_HEADER_SIZE);
  sldns_buffer_write_at(c->buffer, 4,
   (uint8_t*)"\0\0\0\0\0\0\0\0", 8);
  sldns_buffer_flip(c->buffer);
  regional_free_all(worker->scratchpad);
  goto send_reply;
 }
 if(worker->stats.extended)
  server_stats_insquery(&worker->stats, c, qinfo.qtype,
   qinfo.qclass, &edns, repinfo);
 if(c->type != comm_udp)
  edns.udp_size = 65535;
 if(qinfo.qclass == LDNS_RR_CLASS_CH && answer_chaos(worker, &qinfo,
  &edns, repinfo, c->buffer)) {
  server_stats_insrcode(&worker->stats, c->buffer);
  regional_free_all(worker->scratchpad);
  goto send_reply;
 }
 if(LDNS_OPCODE_WIRE(sldns_buffer_begin(c->buffer)) ==
  LDNS_PACKET_NOTIFY) {
  answer_notify(worker, &qinfo, &edns, c->buffer, repinfo);
  regional_free_all(worker->scratchpad);
  goto send_reply;
 }
 if(local_zones_answer(worker->daemon->local_zones, &worker->env, &qinfo,
  &edns, c->buffer, worker->scratchpad, repinfo, acladdr->taglist,
  acladdr->taglen, acladdr->tag_actions,
  acladdr->tag_actions_size, acladdr->tag_datas,
  acladdr->tag_datas_size, worker->daemon->cfg->tagname,
  worker->daemon->cfg->num_tags, acladdr->view)) {
  regional_free_all(worker->scratchpad);
  if(sldns_buffer_limit(c->buffer) == 0) {
   comm_point_drop_reply(repinfo);
   return 0;
  }
  server_stats_insrcode(&worker->stats, c->buffer);
  goto send_reply;
 }
 if(worker->env.auth_zones &&
  auth_zones_answer(worker->env.auth_zones, &worker->env,
  &qinfo, &edns, repinfo, c->buffer, worker->scratchpad)) {
  regional_free_all(worker->scratchpad);
  if(sldns_buffer_limit(c->buffer) == 0) {
   comm_point_drop_reply(repinfo);
   return 0;
  }


  if(LDNS_RD_WIRE(sldns_buffer_begin(c->buffer)) &&
     acl != acl_deny_non_local && acl != acl_refuse_non_local)
   LDNS_RA_SET(sldns_buffer_begin(c->buffer));
  server_stats_insrcode(&worker->stats, c->buffer);
  goto send_reply;
 }



 if((ret=deny_refuse_non_local(c, acl, worker, repinfo)) != -1)
 {
  regional_free_all(worker->scratchpad);
  if(ret == 1)
   goto send_reply;
  return ret;
 }



 if(!(LDNS_RD_WIRE(sldns_buffer_begin(c->buffer))) &&
  acl == acl_allow_setrd ) {
  LDNS_RD_SET(sldns_buffer_begin(c->buffer));
 }



 if(!(LDNS_RD_WIRE(sldns_buffer_begin(c->buffer))) &&
  acl != acl_allow_snoop ) {
  error_encode(c->buffer, LDNS_RCODE_REFUSED, &qinfo,
   *(uint16_t*)(void *)sldns_buffer_begin(c->buffer),
   sldns_buffer_read_u16_at(c->buffer, 2), ((void*)0));
  regional_free_all(worker->scratchpad);
  server_stats_insrcode(&worker->stats, c->buffer);
  log_addr(VERB_ALGO, "refused nonrec (cache snoop) query from",
   &repinfo->addr, repinfo->addrlen);
  goto send_reply;
 }



 if(qinfo.local_alias) {
  struct ub_packed_rrset_key* rrset = qinfo.local_alias->rrset;
  struct packed_rrset_data* d = rrset->entry.data;



  if(qinfo.local_alias->next ||
   rrset->rk.type != htons(LDNS_RR_TYPE_CNAME) ||
   d->count != 1) {
   log_err("assumption failure: unexpected local alias");
   regional_free_all(worker->scratchpad);
   return 0;
  }
  qinfo.qname = d->rr_data[0] + 2;
  qinfo.qname_len = d->rr_len[0] - 2;
 }




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




 if(!edns_bypass_cache_stage(edns.opt_list, &worker->env)) {
  h = query_info_hash(lookup_qinfo, sldns_buffer_read_u16_at(c->buffer, 2));
  if((e=slabhash_lookup(worker->env.msg_cache, h, lookup_qinfo, 0))) {

   if(answer_from_cache(worker, &qinfo,
    cinfo, &need_drop, &alias_rrset, &partial_rep,
    (struct reply_info*)e->data,
    *(uint16_t*)(void *)sldns_buffer_begin(c->buffer),
    sldns_buffer_read_u16_at(c->buffer, 2), repinfo,
    &edns)) {




    if((worker->env.cfg->prefetch || worker->env.cfg->serve_expired)
     && *worker->env.now >=
     ((struct reply_info*)e->data)->prefetch_ttl) {
     time_t leeway = ((struct reply_info*)e->
      data)->ttl - *worker->env.now;
     if(((struct reply_info*)e->data)->ttl
      < *worker->env.now)
      leeway = 0;
     lock_rw_unlock(&e->lock);
     reply_and_prefetch(worker, lookup_qinfo,
      sldns_buffer_read_u16_at(c->buffer, 2),
      repinfo, leeway);
     if(!partial_rep) {
      rc = 0;
      regional_free_all(worker->scratchpad);
      goto send_reply_rc;
     }
    } else if(!partial_rep) {
     lock_rw_unlock(&e->lock);
     regional_free_all(worker->scratchpad);
     goto send_reply;
    } else {


     lock_rw_unlock(&e->lock);
    }






    memset(&qinfo_tmp, 0, sizeof(qinfo_tmp));
    get_cname_target(alias_rrset, &qinfo_tmp.qname,
     &qinfo_tmp.qname_len);
    if(!qinfo_tmp.qname) {
     log_err("unexpected: invalid answer alias");
     regional_free_all(worker->scratchpad);
     return 0;
    }
    qinfo_tmp.qtype = qinfo.qtype;
    qinfo_tmp.qclass = qinfo.qclass;
    lookup_qinfo = &qinfo_tmp;
    goto lookup_cache;
   }
   verbose(VERB_ALGO, "answer from the cache failed");
   lock_rw_unlock(&e->lock);
  }
  if(!LDNS_RD_WIRE(sldns_buffer_begin(c->buffer))) {
   if(answer_norec_from_cache(worker, &qinfo,
    *(uint16_t*)(void *)sldns_buffer_begin(c->buffer),
    sldns_buffer_read_u16_at(c->buffer, 2), repinfo,
    &edns)) {
    regional_free_all(worker->scratchpad);
    goto send_reply;
   }
   verbose(VERB_ALGO, "answer norec from cache -- "
    "need to validate or not primed");
  }
 }
 sldns_buffer_rewind(c->buffer);
 server_stats_querymiss(&worker->stats, worker);

 if(verbosity >= VERB_CLIENT) {
  if(c->type == comm_udp)
   log_addr(VERB_CLIENT, "udp request from",
    &repinfo->addr, repinfo->addrlen);
  else log_addr(VERB_CLIENT, "tcp request from",
    &repinfo->addr, repinfo->addrlen);
 }


 mesh_new_client(worker->env.mesh, &qinfo, cinfo,
  sldns_buffer_read_u16_at(c->buffer, 2),
  &edns, repinfo, *(uint16_t*)(void *)sldns_buffer_begin(c->buffer));
 regional_free_all(worker->scratchpad);
 worker_mem_report(worker, ((void*)0));
 return 0;

send_reply:
 rc = 1;
send_reply_rc:
 if(need_drop) {
  comm_point_drop_reply(repinfo);
  return 0;
 }





 if(worker->env.cfg->log_replies)
 {
  struct timeval tv = {0, 0};
  if(qinfo.local_alias && qinfo.local_alias->rrset &&
   qinfo.local_alias->rrset->rk.dname) {


   qinfo.qname = qinfo.local_alias->rrset->rk.dname;
   log_reply_info(0, &qinfo, &repinfo->addr, repinfo->addrlen,
    tv, 1, c->buffer);
  } else {
   log_reply_info(0, &qinfo, &repinfo->addr, repinfo->addrlen,
    tv, 1, c->buffer);
  }
 }





 return rc;
}
