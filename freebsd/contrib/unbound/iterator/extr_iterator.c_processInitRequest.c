
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {scalar_t__ qclass; int qname; } ;
struct module_qstate {int no_cache_lookup; int no_cache_store; int was_ratelimited; int region; TYPE_7__* env; int query_flags; TYPE_4__ qinfo; int reply; scalar_t__ prefetch_leeway; scalar_t__ reply_origin; scalar_t__ blacklist; } ;
struct TYPE_14__ {size_t qname_len; scalar_t__ qclass; int qtype; int * qname; } ;
struct iter_qstate {scalar_t__ query_restart_count; scalar_t__ depth; int ratelimit_ok; struct delegpt* dp; TYPE_1__ qchase; int deleg_msg; scalar_t__ refetch_glue; int minimisation_state; struct dns_msg* response; scalar_t__ sent_count; } ;
struct iter_env {scalar_t__ max_dependency_depth; int queries_ratelimit_lock; int num_queries_ratelimited; } ;
struct dns_msg {TYPE_5__* rep; int qinfo; } ;
struct delegpt {size_t namelen; int * name; } ;
typedef enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_18__ {int hints; TYPE_2__* cfg; int rnd; scalar_t__* now; int infra_cache; int fwds; int scratch_buffer; int rrset_cache; scalar_t__ neg_cache; int scratch; } ;
struct TYPE_17__ {int flags; scalar_t__ prefetch_ttl; scalar_t__ ttl; int security; } ;
struct TYPE_15__ {scalar_t__ ratelimit_factor; scalar_t__ qname_minimisation; } ;


 int COLLECT_CLASS_STATE ;
 int DONOT_MINIMISE_STATE ;
 scalar_t__ FLAGS_GET_RCODE (int ) ;
 int INIT_MINIMISE_STATE ;
 int INIT_REQUEST_2_STATE ;
 int INIT_REQUEST_STATE ;
 scalar_t__ LDNS_RCODE_REFUSED ;
 scalar_t__ LDNS_RCODE_SERVFAIL ;
 scalar_t__ LDNS_RR_CLASS_ANY ;
 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_NS ;
 scalar_t__ MAX_RESTART_COUNT ;
 int QUERYTARGETS_STATE ;
 int RESPONSE_TYPE_CNAME ;
 scalar_t__ VERB_ALGO ;
 int VERB_DETAIL ;
 scalar_t__ VERB_QUERY ;
 int auth_zone_delegpt (struct module_qstate*,struct iter_qstate*,int *,size_t) ;
 scalar_t__ can_have_last_resort (TYPE_7__*,int *,size_t,scalar_t__,struct delegpt**) ;
 void* delegpt_copy (struct delegpt*,int ) ;
 int delegpt_log (scalar_t__,struct delegpt*) ;
 scalar_t__ dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 struct delegpt* dns_cache_find_delegation (TYPE_7__*,int *,size_t,int ,scalar_t__,int ,int *,scalar_t__) ;
 struct dns_msg* dns_cache_lookup (TYPE_7__*,int *,size_t,int ,scalar_t__,int ,int ,int ,int ) ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_dname (struct module_qstate*,char*,int *) ;
 int error_response (struct module_qstate*,int,scalar_t__) ;
 int final_state (struct iter_qstate*) ;
 scalar_t__ forward_request (struct module_qstate*,struct iter_qstate*) ;
 scalar_t__ forwards_lookup_root (int ,scalar_t__) ;
 int handle_cname_response (struct module_qstate*,struct iter_qstate*,struct dns_msg*,int **,size_t*) ;
 void* hints_lookup_root (int ,scalar_t__) ;
 scalar_t__ infra_ratelimit_exceeded (int ,int *,size_t,scalar_t__) ;
 int infra_ratelimit_inc (int ,int *,size_t,scalar_t__,TYPE_4__*,int ) ;
 scalar_t__ iter_dp_is_useless (TYPE_4__*,int ,struct delegpt*) ;
 scalar_t__ iter_qname_indicates_dnssec (TYPE_7__*,TYPE_1__*) ;
 scalar_t__ iter_stub_fwd_no_cache (struct module_qstate*,TYPE_1__*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_dns_msg (char*,int *,TYPE_5__*) ;
 int log_err (char*) ;
 int log_nametypeclass (scalar_t__,char*,int *,int ,int ) ;
 int log_query_info (int ,char*,TYPE_4__*) ;
 int next_state (struct iter_qstate*,int ) ;
 int prime_root (struct module_qstate*,struct iter_qstate*,int,scalar_t__) ;
 int prime_stub (struct module_qstate*,struct iter_qstate*,int,int *,scalar_t__) ;
 scalar_t__ query_dname_compare (int ,int *) ;
 int response_type_from_cache (struct dns_msg*,TYPE_1__*) ;
 int sec_status_unchecked ;
 int sock_list_insert (scalar_t__*,int *,int ,int ) ;
 int ub_random_max (int ,scalar_t__) ;
 struct dns_msg* val_neg_getmsg (scalar_t__,TYPE_1__*,int ,int ,int ,scalar_t__,int,int *,TYPE_2__*) ;
 int verbose (scalar_t__,char*,...) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
processInitRequest(struct module_qstate* qstate, struct iter_qstate* iq,
 struct iter_env* ie, int id)
{
 uint8_t* delname;
 size_t delnamelen;
 struct dns_msg* msg = ((void*)0);

 log_query_info(VERB_DETAIL, "resolving", &qstate->qinfo);




 if(iq->query_restart_count > MAX_RESTART_COUNT) {
  verbose(VERB_QUERY, "request has exceeded the maximum number"
   " of query restarts with %d", iq->query_restart_count);
  errinf(qstate, "request has exceeded the maximum number "
   "restarts (eg. indirections)");
  if(iq->qchase.qname)
   errinf_dname(qstate, "stop at", iq->qchase.qname);
  return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
 }





 verbose(VERB_ALGO, "request has dependency depth of %d", iq->depth);
 if(iq->depth > ie->max_dependency_depth) {
  verbose(VERB_QUERY, "request has exceeded the maximum "
   "dependency depth with depth of %d", iq->depth);
  errinf(qstate, "request has exceeded the maximum dependency "
   "depth (eg. nameserver lookup recursion)");
  return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
 }


 if(qstate->qinfo.qclass == LDNS_RR_CLASS_ANY) {
  iq->qchase.qclass = 0;
  return next_state(iq, COLLECT_CLASS_STATE);
 }






 if (iq->refetch_glue &&
         iq->dp &&
         !can_have_last_resort(qstate->env, iq->dp->name,
              iq->dp->namelen, iq->qchase.qclass, ((void*)0))) {
     iq->refetch_glue = 0;
 }






 if (iter_stub_fwd_no_cache(qstate, &iq->qchase)) {

  verbose(VERB_ALGO, "no-cache set, going to the network");
  qstate->no_cache_lookup = 1;
  qstate->no_cache_store = 1;
  msg = ((void*)0);
 } else if(qstate->blacklist) {


  verbose(VERB_ALGO, "cache blacklisted, going to the network");
  msg = ((void*)0);
 } else if(!qstate->no_cache_lookup) {
  msg = dns_cache_lookup(qstate->env, iq->qchase.qname,
   iq->qchase.qname_len, iq->qchase.qtype,
   iq->qchase.qclass, qstate->query_flags,
   qstate->region, qstate->env->scratch, 0);
  if(!msg && qstate->env->neg_cache &&
   iter_qname_indicates_dnssec(qstate->env, &iq->qchase)) {


   msg = val_neg_getmsg(qstate->env->neg_cache, &iq->qchase,
    qstate->region, qstate->env->rrset_cache,
    qstate->env->scratch_buffer,
    *qstate->env->now, 1 , ((void*)0),
    qstate->env->cfg);
  }


  if(msg && query_dname_compare(qstate->qinfo.qname,
   iq->qchase.qname) != 0)
   msg->rep->security = sec_status_unchecked;
 }
 if(msg) {

  enum response_type type = response_type_from_cache(msg,
   &iq->qchase);
  if(verbosity >= VERB_ALGO) {
   log_dns_msg("msg from cache lookup", &msg->qinfo,
    msg->rep);
   verbose(VERB_ALGO, "msg ttl is %d, prefetch ttl %d",
    (int)msg->rep->ttl,
    (int)msg->rep->prefetch_ttl);
  }

  if(type == RESPONSE_TYPE_CNAME) {
   uint8_t* sname = 0;
   size_t slen = 0;
   verbose(VERB_ALGO, "returning CNAME response from "
    "cache");
   if(!handle_cname_response(qstate, iq, msg,
    &sname, &slen)) {
    errinf(qstate, "failed to prepend CNAME "
     "components, malloc failure");
    return error_response(qstate, id,
     LDNS_RCODE_SERVFAIL);
   }
   iq->qchase.qname = sname;
   iq->qchase.qname_len = slen;


   iq->dp = ((void*)0);
   iq->refetch_glue = 0;
   iq->query_restart_count++;
   iq->sent_count = 0;
   sock_list_insert(&qstate->reply_origin, ((void*)0), 0, qstate->region);
   if(qstate->env->cfg->qname_minimisation)
    iq->minimisation_state = INIT_MINIMISE_STATE;
   return next_state(iq, INIT_REQUEST_STATE);
  }


  if(qstate->reply_origin)
   sock_list_insert(&qstate->reply_origin, ((void*)0), 0, qstate->region);
  if(FLAGS_GET_RCODE(msg->rep->flags) == LDNS_RCODE_SERVFAIL)
   errinf(qstate, "SERVFAIL in cache");

  verbose(VERB_ALGO, "returning answer from cache.");
  iq->response = msg;
  return final_state(iq);
 }


 if(forward_request(qstate, iq))
 {
  if(!iq->dp) {
   log_err("alloc failure for forward dp");
   errinf(qstate, "malloc failure for forward zone");
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }
  iq->refetch_glue = 0;
  iq->minimisation_state = DONOT_MINIMISE_STATE;



  return next_state(iq, QUERYTARGETS_STATE);
 }







 if(iq->refetch_glue) {
  if(!iq->dp) {
   log_err("internal or malloc fail: no dp for refetch");
   errinf(qstate, "malloc failure, for delegation info");
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }
  delname = iq->dp->name;
  delnamelen = iq->dp->namelen;
 } else {
  delname = iq->qchase.qname;
  delnamelen = iq->qchase.qname_len;
 }
 if(iq->qchase.qtype == LDNS_RR_TYPE_DS || iq->refetch_glue ||
    (iq->qchase.qtype == LDNS_RR_TYPE_NS && qstate->prefetch_leeway
    && can_have_last_resort(qstate->env, delname, delnamelen, iq->qchase.qclass, ((void*)0)))) {





  if(dname_is_root(delname) && (iq->refetch_glue ||
   (iq->qchase.qtype == LDNS_RR_TYPE_NS &&
   qstate->prefetch_leeway)))
   delname = ((void*)0);
  else dname_remove_label(&delname, &delnamelen);
 }

 while(1) {



  if(delname)
       iq->dp = dns_cache_find_delegation(qstate->env, delname,
   delnamelen, iq->qchase.qtype, iq->qchase.qclass,
   qstate->region, &iq->deleg_msg,
   *qstate->env->now+qstate->prefetch_leeway);
  else iq->dp = ((void*)0);



  if(iq->dp == ((void*)0)) {
   int r;

   if(!auth_zone_delegpt(qstate, iq, delname, delnamelen))
    return error_response(qstate, id,
     LDNS_RCODE_SERVFAIL);
   if(iq->dp)
    return next_state(iq, INIT_REQUEST_2_STATE);

   r = prime_stub(qstate, iq, id, delname,
    iq->qchase.qclass);
   if(r == 2)
    break;
   else if(r)
    return 0;
   if(forwards_lookup_root(qstate->env->fwds,
    iq->qchase.qclass)) {


    iq->dp = hints_lookup_root(qstate->env->hints,
     iq->qchase.qclass);
    if(!iq->dp) {
     log_err("internal error: no hints dp");
     errinf(qstate, "no hints for this class");
     return error_response(qstate, id,
      LDNS_RCODE_SERVFAIL);
    }
    iq->dp = delegpt_copy(iq->dp, qstate->region);
    if(!iq->dp) {
     log_err("out of memory in safety belt");
     errinf(qstate, "malloc failure, in safety belt");
     return error_response(qstate, id,
      LDNS_RCODE_SERVFAIL);
    }
    return next_state(iq, INIT_REQUEST_2_STATE);
   }


   if(!prime_root(qstate, iq, id, iq->qchase.qclass))
    return error_response(qstate, id,
     LDNS_RCODE_REFUSED);





   return 0;
  }
  if(!iq->ratelimit_ok && qstate->prefetch_leeway)
   iq->ratelimit_ok = 1;

  if(!iq->ratelimit_ok && infra_ratelimit_exceeded(
   qstate->env->infra_cache, iq->dp->name,
   iq->dp->namelen, *qstate->env->now)) {


   (void)infra_ratelimit_inc(qstate->env->infra_cache,
    iq->dp->name, iq->dp->namelen,
    *qstate->env->now, &qstate->qinfo,
    qstate->reply);

   if(qstate->env->cfg->ratelimit_factor != 0 &&
    ub_random_max(qstate->env->rnd,
        qstate->env->cfg->ratelimit_factor) == 1) {
    iq->ratelimit_ok = 1;
    log_nametypeclass(VERB_ALGO, "ratelimit allowed through for "
     "delegation point", iq->dp->name,
     LDNS_RR_TYPE_NS, LDNS_RR_CLASS_IN);
   } else {
    lock_basic_lock(&ie->queries_ratelimit_lock);
    ie->num_queries_ratelimited++;
    lock_basic_unlock(&ie->queries_ratelimit_lock);
    log_nametypeclass(VERB_ALGO, "ratelimit exceeded with "
     "delegation point", iq->dp->name,
     LDNS_RR_TYPE_NS, LDNS_RR_CLASS_IN);
    qstate->was_ratelimited = 1;
    errinf(qstate, "query was ratelimited");
    errinf_dname(qstate, "for zone", iq->dp->name);
    return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
   }
  }
  if(iter_dp_is_useless(&qstate->qinfo, qstate->query_flags,
   iq->dp)) {
   struct delegpt* retdp = ((void*)0);
   if(!can_have_last_resort(qstate->env, iq->dp->name, iq->dp->namelen, iq->qchase.qclass, &retdp)) {
    if(retdp) {
     verbose(VERB_QUERY, "cache has stub "
      "or fwd but no addresses, "
      "fallback to config");
     iq->dp = delegpt_copy(retdp,
      qstate->region);
     if(!iq->dp) {
      log_err("out of memory in "
       "stub/fwd fallback");
      errinf(qstate, "malloc failure, for fallback to config");
      return error_response(qstate,
          id, LDNS_RCODE_SERVFAIL);
     }
     break;
    }
    verbose(VERB_ALGO, "useless dp "
     "but cannot go up, servfail");
    delegpt_log(VERB_ALGO, iq->dp);
    errinf(qstate, "no useful nameservers, "
     "and cannot go up");
    errinf_dname(qstate, "for zone", iq->dp->name);
    return error_response(qstate, id,
     LDNS_RCODE_SERVFAIL);
   }
   if(dname_is_root(iq->dp->name)) {

    verbose(VERB_QUERY, "Cache has root NS but "
    "no addresses. Fallback to the safety belt.");
    iq->dp = hints_lookup_root(qstate->env->hints,
     iq->qchase.qclass);


    if(!iq->dp) {
     log_err("internal error: no hints dp");
     return error_response(qstate, id,
      LDNS_RCODE_REFUSED);
    }
    iq->dp = delegpt_copy(iq->dp, qstate->region);
    if(!iq->dp) {
     log_err("out of memory in safety belt");
     errinf(qstate, "malloc failure, in safety belt, for root");
     return error_response(qstate, id,
      LDNS_RCODE_SERVFAIL);
    }
    break;
   } else {
    verbose(VERB_ALGO,
     "cache delegation was useless:");
    delegpt_log(VERB_ALGO, iq->dp);

    delname = iq->dp->name;
    delnamelen = iq->dp->namelen;
    dname_remove_label(&delname, &delnamelen);
   }
  } else break;
 }

 verbose(VERB_ALGO, "cache delegation returns delegpt");
 delegpt_log(VERB_ALGO, iq->dp);



 return next_state(iq, INIT_REQUEST_2_STATE);
}
