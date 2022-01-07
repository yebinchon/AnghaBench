
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_60__ TYPE_9__ ;
typedef struct TYPE_59__ TYPE_8__ ;
typedef struct TYPE_58__ TYPE_7__ ;
typedef struct TYPE_57__ TYPE_6__ ;
typedef struct TYPE_56__ TYPE_5__ ;
typedef struct TYPE_55__ TYPE_4__ ;
typedef struct TYPE_54__ TYPE_3__ ;
typedef struct TYPE_53__ TYPE_39__ ;
typedef struct TYPE_52__ TYPE_31__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_25__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_16__ ;
typedef struct TYPE_47__ TYPE_13__ ;


typedef int uint8_t ;
struct TYPE_49__ {int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct TYPE_56__ {scalar_t__ qtype; int qclass; } ;
struct module_qstate {int query_flags; TYPE_5__ qinfo; TYPE_16__* env; TYPE_3__* reply; int * region; int reply_origin; int prefetch_leeway; int no_cache_store; } ;
struct TYPE_52__ {size_t qname_len; int qtype; int * qname; int qclass; } ;
struct TYPE_59__ {int qname; } ;
struct iter_qstate {scalar_t__ minimisation_state; int chase_flags; scalar_t__ sent_count; int auth_zone_avoid; TYPE_9__* dp; scalar_t__ auth_zone_response; TYPE_31__ qchase; scalar_t__ num_target_queries; scalar_t__ num_current_queries; int outlist; int query_restart_count; int * dsns_point; TYPE_7__* deleg_msg; TYPE_7__* response; scalar_t__ dnssec_expected; int referral_count; TYPE_25__* store_parent_NS; scalar_t__ pside_glue; scalar_t__ query_for_pside_glue; int ratelimit_ok; TYPE_8__ qinfo_out; scalar_t__ dnssec_lame_query; scalar_t__ chase_to_rd; int minimise_timeout_count; } ;
struct delegpt_addr {int dnsseclame; } ;
typedef enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_60__ {scalar_t__ auth_dp; int * name; int namelen; scalar_t__ has_parent_side_NS; } ;
struct TYPE_47__ {int qclass; int qtype; int qname_len; int qname; } ;
struct TYPE_58__ {TYPE_6__* rep; TYPE_13__ qinfo; } ;
struct TYPE_57__ {int an_numrrsets; int ns_numrrsets; int flags; TYPE_39__** rrsets; } ;
struct TYPE_55__ {scalar_t__ qname_minimisation_strict; scalar_t__ qname_minimisation; scalar_t__ harden_referral_path; scalar_t__ prefetch_key; scalar_t__ harden_below_nxdomain; int disable_dnssec_lame_check; } ;
struct TYPE_54__ {int addrlen; int addr; } ;
struct TYPE_51__ {int * dname; int type; } ;
struct TYPE_53__ {TYPE_2__ rk; } ;
struct TYPE_50__ {int name; } ;
struct TYPE_48__ {int auth_zones; TYPE_4__* cfg; int * now; int infra_cache; int (* detach_subs ) (struct module_qstate*) ;scalar_t__ neg_cache; } ;


 int BIT_CD ;
 int BIT_RD ;
 scalar_t__ DNSSEC_LAME_DETECT_COUNT ;
 scalar_t__ DONOT_MINIMISE_STATE ;
 int FINISHED_STATE ;
 scalar_t__ FLAGS_GET_RCODE (int ) ;
 void* INIT_MINIMISE_STATE ;
 int INIT_REQUEST_STATE ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 int LDNS_RCODE_SERVFAIL ;
 scalar_t__ LDNS_RCODE_YXDOMAIN ;
 int LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 int LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ MINIMISE_STATE ;
 int QUERYTARGETS_STATE ;
 int RESPONSE_TYPE_ANSWER ;
 int RESPONSE_TYPE_CNAME ;
 int RESPONSE_TYPE_LAME ;
 int RESPONSE_TYPE_REC_LAME ;
 int RESPONSE_TYPE_REFERRAL ;
 int RESPONSE_TYPE_THROWAWAY ;
 int RESPONSE_TYPE_UNTYPED ;
 scalar_t__ SKIP_MINIMISE_STATE ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ VERB_DETAIL ;
 int VERB_QUERY ;
 int auth_zones_can_fallback (int ,int *,int ,int ) ;
 int cache_fill_missing (TYPE_16__*,int ,int *,TYPE_9__*) ;
 struct delegpt_addr* delegpt_find_addr (TYPE_9__*,int *,int ) ;
 TYPE_9__* delegpt_from_message (TYPE_7__*,int *) ;
 int delegpt_log (scalar_t__,TYPE_9__*) ;
 int dname_strict_subdomain_c (int *,int *) ;
 scalar_t__ dname_subdomain_c (int *,int *) ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_dname (struct module_qstate*,char*,int *) ;
 int error_response (struct module_qstate*,int,int ) ;
 int final_state (struct iter_qstate*) ;
 struct ub_packed_rrset_key* find_NS (TYPE_6__*,int,int) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_modenv_detach_subs (int (*) (struct module_qstate*)) ;
 int generate_dnskey_prefetch (struct module_qstate*,struct iter_qstate*,int) ;
 int generate_ns_check (struct module_qstate*,struct iter_qstate*,int) ;
 int generate_sub_request (int ,int ,int ,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int) ;
 int get_cname_target (TYPE_39__*,int **,size_t*) ;
 int handle_cname_response (struct module_qstate*,struct iter_qstate*,TYPE_7__*,int **,size_t*) ;
 int infra_ratelimit_dec (int ,int *,int ,int ) ;
 int infra_set_lame (int ,int *,int ,int *,int ,int ,int,int,int ) ;
 int inplace_cb_query_response_call (TYPE_16__*,struct module_qstate*,TYPE_7__*) ;
 int iter_dns_store (TYPE_16__*,TYPE_13__*,TYPE_6__*,int,int ,int,int *,int) ;
 scalar_t__ iter_dp_cangodown (TYPE_31__*,TYPE_9__*) ;
 scalar_t__ iter_ds_toolow (TYPE_7__*,TYPE_9__*) ;
 scalar_t__ iter_indicates_dnssec (TYPE_16__*,TYPE_9__*,TYPE_7__*,int ) ;
 int iter_merge_retry_counts (TYPE_9__*,TYPE_25__*) ;
 int iter_msg_from_zone (TYPE_7__*,TYPE_9__*,int,int ) ;
 int iter_msg_has_dnssec (TYPE_7__*) ;
 int iter_scrub_ds (TYPE_7__*,struct ub_packed_rrset_key*,int *) ;
 int iter_scrub_nxdomain (TYPE_7__*) ;
 int iter_store_parentside_NS (TYPE_16__*,TYPE_6__*) ;
 int iter_store_parentside_rrset (TYPE_16__*,scalar_t__) ;
 int log_dns_msg (char*,TYPE_13__*,TYPE_6__*) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,TYPE_13__*) ;
 int log_rrset_key (scalar_t__,char*,scalar_t__) ;
 int log_warn (char*,int) ;
 int next_state (struct iter_qstate*,int ) ;
 scalar_t__ ntohs (int ) ;
 int outbound_list_clear (int *) ;
 int processDSNSFind (struct module_qstate*,struct iter_qstate*,int) ;
 scalar_t__ query_dname_compare (int *,int ) ;
 scalar_t__ reply_find_rrset (TYPE_6__*,int *,size_t,int ,int ) ;
 scalar_t__ reply_find_rrset_section_an (TYPE_6__*,int *,size_t,scalar_t__,int ) ;
 scalar_t__ reply_find_rrset_section_ns (TYPE_6__*,int *,size_t,scalar_t__,int ) ;
 int response_type_from_server (int,TYPE_7__*,TYPE_8__*,TYPE_9__*) ;
 int sock_list_insert (int *,int *,int ,int *) ;
 int stub1 (struct module_qstate*) ;
 int stub2 (struct module_qstate*) ;
 int stub3 (struct module_qstate*) ;
 int stub4 (struct module_qstate*) ;
 int stub5 (struct module_qstate*) ;
 int stub6 (struct module_qstate*) ;
 int val_neg_addreferral (scalar_t__,TYPE_6__*,int *) ;
 int verbose (scalar_t__,char*,...) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
processQueryResponse(struct module_qstate* qstate, struct iter_qstate* iq,
 int id)
{
 int dnsseclame = 0;
 enum response_type type;
 iq->num_current_queries--;

 if(!inplace_cb_query_response_call(qstate->env, qstate, iq->response))
  log_err("unable to call query_response callback");

 if(iq->response == ((void*)0)) {

  if(qstate->env->cfg->qname_minimisation) {
   iq->minimise_timeout_count++;
   iq->minimisation_state = SKIP_MINIMISE_STATE;
  }
  iq->chase_to_rd = 0;
  iq->dnssec_lame_query = 0;
  verbose(VERB_ALGO, "query response was timeout");
  return next_state(iq, QUERYTARGETS_STATE);
 }
 type = response_type_from_server(
  (int)((iq->chase_flags&BIT_RD) || iq->chase_to_rd),
  iq->response, &iq->qinfo_out, iq->dp);
 iq->chase_to_rd = 0;
 if(type == RESPONSE_TYPE_REFERRAL && (iq->chase_flags&BIT_RD) &&
  !iq->auth_zone_response) {


  type = RESPONSE_TYPE_ANSWER;
 }
 if(!qstate->env->cfg->disable_dnssec_lame_check && iq->dnssec_expected
                && !iq->dnssec_lame_query &&
  !(iq->chase_flags&BIT_RD)
  && iq->sent_count < DNSSEC_LAME_DETECT_COUNT
  && type != RESPONSE_TYPE_LAME
  && type != RESPONSE_TYPE_REC_LAME
  && type != RESPONSE_TYPE_THROWAWAY
  && type != RESPONSE_TYPE_UNTYPED) {


  if(!iter_msg_has_dnssec(iq->response)) {




   if(qstate->reply) {
    struct delegpt_addr* a = delegpt_find_addr(
     iq->dp, &qstate->reply->addr,
     qstate->reply->addrlen);
    if(a) a->dnsseclame = 1;
   }



   if(!iter_msg_from_zone(iq->response, iq->dp, type,
    iq->qchase.qclass))
    qstate->reply = ((void*)0);
   type = RESPONSE_TYPE_LAME;
   dnsseclame = 1;
  }
 } else iq->dnssec_lame_query = 0;

 if(type == RESPONSE_TYPE_REFERRAL) {
  struct ub_packed_rrset_key* ns = find_NS(
   iq->response->rep, iq->response->rep->an_numrrsets,
   iq->response->rep->an_numrrsets
   + iq->response->rep->ns_numrrsets);
  if(!ns) ns = find_NS(iq->response->rep, 0,
    iq->response->rep->an_numrrsets);
  if(!ns || !dname_strict_subdomain_c(ns->rk.dname, iq->dp->name)
   || !dname_subdomain_c(iq->qchase.qname, ns->rk.dname)){
   verbose(VERB_ALGO, "bad referral, throwaway");
   type = RESPONSE_TYPE_THROWAWAY;
  } else
   iter_scrub_ds(iq->response, ns, iq->dp->name);
 } else iter_scrub_ds(iq->response, ((void*)0), ((void*)0));
 if(type == RESPONSE_TYPE_THROWAWAY &&
  FLAGS_GET_RCODE(iq->response->rep->flags) == LDNS_RCODE_YXDOMAIN) {

  type = RESPONSE_TYPE_ANSWER;
 }
 if(type == RESPONSE_TYPE_CNAME && iq->response->rep->an_numrrsets >= 1
  && ntohs(iq->response->rep->rrsets[0]->rk.type) == LDNS_RR_TYPE_DNAME) {
  uint8_t* sname = ((void*)0);
  size_t snamelen = 0;
  get_cname_target(iq->response->rep->rrsets[0], &sname,
   &snamelen);
  if(snamelen && dname_subdomain_c(sname, iq->response->rep->rrsets[0]->rk.dname)) {

   type = RESPONSE_TYPE_ANSWER;
  }
 } else if(type == RESPONSE_TYPE_CNAME &&
  iq->qchase.qtype == LDNS_RR_TYPE_CNAME &&
  iq->minimisation_state == MINIMISE_STATE &&
  query_dname_compare(iq->qchase.qname, iq->qinfo_out.qname) == 0) {




  type = RESPONSE_TYPE_ANSWER;
 }


 if(type == RESPONSE_TYPE_ANSWER) {


  if(verbosity >= VERB_DETAIL) {
   verbose(VERB_DETAIL, "query response was %s",
    FLAGS_GET_RCODE(iq->response->rep->flags)
    ==LDNS_RCODE_NXDOMAIN?"NXDOMAIN ANSWER":
    (iq->response->rep->an_numrrsets?"ANSWER":
    "nodata ANSWER"));
  }


  if(iq->qchase.qtype == LDNS_RR_TYPE_DS && !iq->dsns_point
   && !(iq->chase_flags&BIT_RD)
   && iter_ds_toolow(iq->response, iq->dp)
   && iter_dp_cangodown(&iq->qchase, iq->dp)) {

   outbound_list_clear(&iq->outlist);
   iq->num_current_queries = 0;
   fptr_ok(fptr_whitelist_modenv_detach_subs(
    qstate->env->detach_subs));
   (*qstate->env->detach_subs)(qstate);
   iq->num_target_queries = 0;
   return processDSNSFind(qstate, iq, id);
  }
  if(!qstate->no_cache_store)
   iter_dns_store(qstate->env, &iq->response->qinfo,
    iq->response->rep, 0, qstate->prefetch_leeway,
    iq->dp&&iq->dp->has_parent_side_NS,
    qstate->region, qstate->query_flags);

  outbound_list_clear(&iq->outlist);
  iq->num_current_queries = 0;
  fptr_ok(fptr_whitelist_modenv_detach_subs(
   qstate->env->detach_subs));
  (*qstate->env->detach_subs)(qstate);
  iq->num_target_queries = 0;
  if(qstate->reply)
   sock_list_insert(&qstate->reply_origin,
    &qstate->reply->addr, qstate->reply->addrlen,
    qstate->region);
  if(iq->minimisation_state != DONOT_MINIMISE_STATE
   && !(iq->chase_flags & BIT_RD)) {
   if(FLAGS_GET_RCODE(iq->response->rep->flags) !=
    LDNS_RCODE_NOERROR) {
    if(qstate->env->cfg->qname_minimisation_strict) {
     if(FLAGS_GET_RCODE(iq->response->rep->flags) ==
      LDNS_RCODE_NXDOMAIN) {
      iter_scrub_nxdomain(iq->response);
      return final_state(iq);
     }
     return error_response(qstate, id,
      LDNS_RCODE_SERVFAIL);
    }



    iq->minimisation_state = DONOT_MINIMISE_STATE;
   }
   if(FLAGS_GET_RCODE(iq->response->rep->flags) ==
    LDNS_RCODE_NXDOMAIN) {




    if(iq->dnssec_expected)
     return final_state(iq);



    if(qstate->env->cfg->harden_below_nxdomain) {
     struct module_qstate* subq = ((void*)0);
     log_query_info(VERB_QUERY,
      "schedule NXDOMAIN validation:",
      &iq->response->qinfo);
     if(!generate_sub_request(
      iq->response->qinfo.qname,
      iq->response->qinfo.qname_len,
      iq->response->qinfo.qtype,
      iq->response->qinfo.qclass,
      qstate, id, iq,
      INIT_REQUEST_STATE,
      FINISHED_STATE, &subq, 1))
      verbose(VERB_ALGO,
      "could not validate NXDOMAIN "
      "response");
     outbound_list_clear(&iq->outlist);
     iq->num_current_queries = 0;
     fptr_ok(fptr_whitelist_modenv_detach_subs(
      qstate->env->detach_subs));
     (*qstate->env->detach_subs)(qstate);
     iq->num_target_queries = 0;
    }
   }
   return next_state(iq, QUERYTARGETS_STATE);
  }
  return final_state(iq);
 } else if(type == RESPONSE_TYPE_REFERRAL) {


  verbose(VERB_DETAIL, "query response was REFERRAL");

  if(!(iq->chase_flags & BIT_RD) && !iq->ratelimit_ok) {


   infra_ratelimit_dec(qstate->env->infra_cache,
    iq->dp->name, iq->dp->namelen,
    *qstate->env->now);
  }


  if(!qstate->no_cache_store &&
  (!qstate->env->cfg->harden_referral_path ||
      ( qstate->qinfo.qtype == LDNS_RR_TYPE_NS
   && (qstate->query_flags&BIT_RD)
   && !(qstate->query_flags&BIT_CD)



   && (
     reply_find_rrset_section_ns(iq->response->rep,
    iq->qchase.qname, iq->qchase.qname_len,
    LDNS_RR_TYPE_NS, iq->qchase.qclass)
     || reply_find_rrset_section_an(iq->response->rep,
    iq->qchase.qname, iq->qchase.qname_len,
    LDNS_RR_TYPE_NS, iq->qchase.qclass)
     )
      ))) {


   iter_dns_store(qstate->env, &iq->response->qinfo,
    iq->response->rep, 1, 0, 0, ((void*)0), 0);
   if(iq->store_parent_NS)
    iter_store_parentside_NS(qstate->env,
     iq->response->rep);
   if(qstate->env->neg_cache)
    val_neg_addreferral(qstate->env->neg_cache,
     iq->response->rep, iq->dp->name);
  }

  if(!qstate->no_cache_store && iq->query_for_pside_glue
   && !iq->pside_glue) {
    iq->pside_glue = reply_find_rrset(iq->response->rep,
     iq->qchase.qname, iq->qchase.qname_len,
     iq->qchase.qtype, iq->qchase.qclass);
    if(iq->pside_glue) {
     log_rrset_key(VERB_ALGO, "found parent-side "
      "glue", iq->pside_glue);
     iter_store_parentside_rrset(qstate->env,
      iq->pside_glue);
    }
  }



  iq->deleg_msg = iq->response;
  iq->dp = delegpt_from_message(iq->response, qstate->region);
  if (qstate->env->cfg->qname_minimisation)
   iq->minimisation_state = INIT_MINIMISE_STATE;
  if(!iq->dp) {
   errinf(qstate, "malloc failure, for delegation point");
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }
  if(!cache_fill_missing(qstate->env, iq->qchase.qclass,
   qstate->region, iq->dp)) {
   errinf(qstate, "malloc failure, copy extra info into delegation point");
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }
  if(iq->store_parent_NS && query_dname_compare(iq->dp->name,
   iq->store_parent_NS->name) == 0)
   iter_merge_retry_counts(iq->dp, iq->store_parent_NS);
  delegpt_log(VERB_ALGO, iq->dp);

  iq->referral_count++;
  iq->sent_count = 0;


  iq->dnssec_expected = iter_indicates_dnssec(qstate->env,
   iq->dp, iq->response, iq->qchase.qclass);

  if(iq->dnssec_expected && qstate->env->cfg->prefetch_key &&
   !(qstate->query_flags&BIT_CD))
   generate_dnskey_prefetch(qstate, iq, id);





  if(qstate->env->cfg->harden_referral_path)
   generate_ns_check(qstate, iq, id);





  outbound_list_clear(&iq->outlist);
  iq->num_current_queries = 0;
  fptr_ok(fptr_whitelist_modenv_detach_subs(
   qstate->env->detach_subs));
  (*qstate->env->detach_subs)(qstate);
  iq->num_target_queries = 0;
  verbose(VERB_ALGO, "cleared outbound list for next round");
  return next_state(iq, QUERYTARGETS_STATE);
 } else if(type == RESPONSE_TYPE_CNAME) {
  uint8_t* sname = ((void*)0);
  size_t snamelen = 0;



  verbose(VERB_DETAIL, "query response was CNAME");
  if(verbosity >= VERB_ALGO)
   log_dns_msg("cname msg", &iq->response->qinfo,
    iq->response->rep);


  if(iq->qchase.qtype == LDNS_RR_TYPE_DS && !iq->dsns_point
   && !(iq->chase_flags&BIT_RD)
   && iter_ds_toolow(iq->response, iq->dp)
   && iter_dp_cangodown(&iq->qchase, iq->dp)) {
   outbound_list_clear(&iq->outlist);
   iq->num_current_queries = 0;
   fptr_ok(fptr_whitelist_modenv_detach_subs(
    qstate->env->detach_subs));
   (*qstate->env->detach_subs)(qstate);
   iq->num_target_queries = 0;
   return processDSNSFind(qstate, iq, id);
  }

  if(!handle_cname_response(qstate, iq, iq->response,
   &sname, &snamelen)) {
   errinf(qstate, "malloc failure, CNAME info");
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }




  if(!qstate->no_cache_store)
   iter_dns_store(qstate->env, &iq->response->qinfo,
    iq->response->rep, 1, qstate->prefetch_leeway,
    iq->dp&&iq->dp->has_parent_side_NS, ((void*)0),
    qstate->query_flags);

  iq->qchase.qname = sname;
  iq->qchase.qname_len = snamelen;

  iq->deleg_msg = ((void*)0);
  iq->dp = ((void*)0);
  iq->dsns_point = ((void*)0);
  iq->auth_zone_response = 0;
  iq->sent_count = 0;
  if(iq->minimisation_state != MINIMISE_STATE)


   iq->query_restart_count++;
  if(qstate->env->cfg->qname_minimisation)
   iq->minimisation_state = INIT_MINIMISE_STATE;





  outbound_list_clear(&iq->outlist);
  iq->num_current_queries = 0;
  fptr_ok(fptr_whitelist_modenv_detach_subs(
   qstate->env->detach_subs));
  (*qstate->env->detach_subs)(qstate);
  iq->num_target_queries = 0;
  if(qstate->reply)
   sock_list_insert(&qstate->reply_origin,
    &qstate->reply->addr, qstate->reply->addrlen,
    qstate->region);
  verbose(VERB_ALGO, "cleared outbound list for query restart");

  return next_state(iq, INIT_REQUEST_STATE);
 } else if(type == RESPONSE_TYPE_LAME) {

  verbose(VERB_DETAIL, "query response was %sLAME",
   dnsseclame?"DNSSEC ":"");
  if(!dname_subdomain_c(iq->qchase.qname, iq->dp->name)) {
   log_err("mark lame: mismatch in qname and dpname");

  } else if(qstate->reply) {


   if(!infra_set_lame(qstate->env->infra_cache,
    &qstate->reply->addr, qstate->reply->addrlen,
    iq->dp->name, iq->dp->namelen,
    *qstate->env->now, dnsseclame, 0,
    iq->qchase.qtype))
    log_err("mark host lame: out of memory");
  }
 } else if(type == RESPONSE_TYPE_REC_LAME) {

  verbose(VERB_DETAIL, "query response REC_LAME: "
   "recursive but not authoritative server");
  if(!dname_subdomain_c(iq->qchase.qname, iq->dp->name)) {
   log_err("mark rec_lame: mismatch in qname and dpname");

  } else if(qstate->reply) {


   verbose(VERB_DETAIL, "mark as REC_LAME");
   if(!infra_set_lame(qstate->env->infra_cache,
    &qstate->reply->addr, qstate->reply->addrlen,
    iq->dp->name, iq->dp->namelen,
    *qstate->env->now, 0, 1, iq->qchase.qtype))
    log_err("mark host lame: out of memory");
  }
 } else if(type == RESPONSE_TYPE_THROWAWAY) {




  verbose(VERB_DETAIL, "query response was THROWAWAY");
 } else {
  log_warn("A query response came back with an unknown type: %d",
   (int)type);
 }




 if (qstate->env->cfg->qname_minimisation &&
  !qstate->env->cfg->qname_minimisation_strict)
  iq->minimisation_state = DONOT_MINIMISE_STATE;
 if(iq->auth_zone_response) {

  iq->auth_zone_response = 0;
  if(!auth_zones_can_fallback(qstate->env->auth_zones,
   iq->dp->name, iq->dp->namelen, qstate->qinfo.qclass)) {
   verbose(VERB_ALGO, "auth zone response bad, and no"
    " fallback possible, servfail");
   errinf_dname(qstate, "response is bad, no fallback, "
    "for auth zone", iq->dp->name);
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }
  verbose(VERB_ALGO, "auth zone response was bad, "
   "fallback enabled");
  iq->auth_zone_avoid = 1;
  if(iq->dp->auth_dp) {


   iq->dp = ((void*)0);
   return next_state(iq, INIT_REQUEST_STATE);
  }
 }
 return next_state(iq, QUERYTARGETS_STATE);
}
