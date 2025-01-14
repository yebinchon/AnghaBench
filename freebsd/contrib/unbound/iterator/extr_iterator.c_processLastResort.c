
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_27__ {int qname; } ;
struct module_qstate {TYPE_7__ qinfo; TYPE_6__* env; int no_cache_store; void** ext_state; int region; } ;
struct TYPE_24__ {int qclass; } ;
struct iter_qstate {int refetch_glue; int num_target_queries; scalar_t__ depth; scalar_t__* target_count; TYPE_5__* dp; TYPE_3__* response; TYPE_2__* deleg_msg; int pside_glue; scalar_t__ query_for_pside_glue; TYPE_4__ qchase; int minimisation_state; scalar_t__ sent_count; int query_restart_count; int chase_flags; TYPE_5__* store_parent_NS; } ;
struct iter_env {scalar_t__ max_dependency_depth; scalar_t__ supports_ipv4; scalar_t__ supports_ipv6; } ;
struct delegpt_ns {int done_pside6; int done_pside4; int name; int namelen; struct delegpt_ns* next; int lame; } ;
struct delegpt_addr {int tls_auth_name; int lame; int bogus; int addrlen; int addr; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; struct delegpt_ns* nslist; } ;
struct TYPE_26__ {TYPE_1__* cfg; int hints; } ;
struct TYPE_25__ {int has_parent_side_NS; int name; struct delegpt_ns* nslist; scalar_t__ usable_list; int namelen; } ;
struct TYPE_23__ {int * rep; } ;
struct TYPE_22__ {int * rep; } ;
struct TYPE_21__ {scalar_t__ qname_minimisation; } ;


 int BIT_RD ;
 int INIT_MINIMISE_STATE ;
 int INIT_REQUEST_STATE ;
 int LDNS_MAX_DOMAINLEN ;
 int LDNS_RCODE_SERVFAIL ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int LDNS_RR_TYPE_NS ;
 scalar_t__ MAX_TARGET_COUNT ;
 int QUERYTARGETS_STATE ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int cache_fill_missing (TYPE_6__*,int ,int ,TYPE_5__*) ;
 int can_have_last_resort (TYPE_6__*,int ,int ,int ,int *) ;
 int delegpt_add_addr (TYPE_5__*,int ,int *,int ,int ,int ,int ) ;
 int delegpt_add_ns (TYPE_5__*,int ,int ,int ) ;
 scalar_t__ delegpt_count_missing_targets (TYPE_5__*) ;
 scalar_t__ dname_is_root (int ) ;
 int dname_str (int ,char*) ;
 int errinf (struct module_qstate*,char*) ;
 int errinf_dname (struct module_qstate*,char*,int ) ;
 int error_response (struct module_qstate*,int,int ) ;
 int error_response_cache (struct module_qstate*,int,int ) ;
 int generate_parentside_target_query (struct module_qstate*,struct iter_qstate*,int,int ,int ,int ,int ) ;
 struct delegpt* hints_lookup_root (int ,int ) ;
 int iter_lookup_parent_NS_from_cache (TYPE_6__*,TYPE_5__*,int ,TYPE_7__*) ;
 scalar_t__ iter_lookup_parent_glue_from_cache (TYPE_6__*,TYPE_5__*,int ,TYPE_7__*) ;
 int iter_mark_pside_cycle_targets (struct module_qstate*,TYPE_5__*) ;
 int iter_store_parentside_neg (TYPE_6__*,TYPE_7__*,int *) ;
 int log_assert (TYPE_5__*) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 void* module_wait_subquery ;
 int next_state (struct iter_qstate*,int ) ;
 int query_for_targets (struct module_qstate*,struct iter_qstate*,struct iter_env*,int,int,int*) ;
 int target_count_increase (struct iter_qstate*,int) ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static int
processLastResort(struct module_qstate* qstate, struct iter_qstate* iq,
 struct iter_env* ie, int id)
{
 struct delegpt_ns* ns;
 int query_count = 0;
 verbose(VERB_ALGO, "No more query targets, attempting last resort");
 log_assert(iq->dp);

 if(!can_have_last_resort(qstate->env, iq->dp->name, iq->dp->namelen,
  iq->qchase.qclass, ((void*)0))) {


  errinf(qstate, "all the configured stub or forward servers failed,");
  errinf_dname(qstate, "at zone", iq->dp->name);
  verbose(VERB_QUERY, "configured stub or forward servers failed -- returning SERVFAIL");
  return error_response_cache(qstate, id, LDNS_RCODE_SERVFAIL);
 }
 if(!iq->dp->has_parent_side_NS && dname_is_root(iq->dp->name)) {
  struct delegpt* p = hints_lookup_root(qstate->env->hints,
   iq->qchase.qclass);
  if(p) {
   struct delegpt_addr* a;
   iq->chase_flags &= ~BIT_RD;
   for(ns = p->nslist; ns; ns=ns->next) {
    (void)delegpt_add_ns(iq->dp, qstate->region,
     ns->name, ns->lame);
   }
   for(a = p->target_list; a; a=a->next_target) {
    (void)delegpt_add_addr(iq->dp, qstate->region,
     &a->addr, a->addrlen, a->bogus,
     a->lame, a->tls_auth_name);
   }
  }
  iq->dp->has_parent_side_NS = 1;
 } else if(!iq->dp->has_parent_side_NS) {
  if(!iter_lookup_parent_NS_from_cache(qstate->env, iq->dp,
   qstate->region, &qstate->qinfo)
   || !iq->dp->has_parent_side_NS) {


   verbose(VERB_ALGO, "try to grab parent NS");
   iq->store_parent_NS = iq->dp;
   iq->chase_flags &= ~BIT_RD;
   iq->deleg_msg = ((void*)0);
   iq->refetch_glue = 1;
   iq->query_restart_count++;
   iq->sent_count = 0;
   if(qstate->env->cfg->qname_minimisation)
    iq->minimisation_state = INIT_MINIMISE_STATE;
   return next_state(iq, INIT_REQUEST_STATE);
  }
 }

 if(!cache_fill_missing(qstate->env, iq->qchase.qclass,
  qstate->region, iq->dp))
  log_err("out of memory in cache_fill_missing");
 if(iq->dp->usable_list) {
  verbose(VERB_ALGO, "try parent-side-name, w. glue from cache");
  return next_state(iq, QUERYTARGETS_STATE);
 }

 if(iter_lookup_parent_glue_from_cache(qstate->env, iq->dp,
  qstate->region, &qstate->qinfo)) {

  verbose(VERB_ALGO, "try parent-side glue from cache");
  return next_state(iq, QUERYTARGETS_STATE);
 }

 if(delegpt_count_missing_targets(iq->dp) > 0) {
  int qs = 0;
  verbose(VERB_ALGO, "try parent-side target name");
  if(!query_for_targets(qstate, iq, ie, id, 1, &qs)) {
   errinf(qstate, "could not fetch nameserver");
   errinf_dname(qstate, "at zone", iq->dp->name);
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }
  iq->num_target_queries += qs;
  target_count_increase(iq, qs);
  if(qs != 0) {
   qstate->ext_state[id] = module_wait_subquery;
   return 0;
  }
 }
 if(iq->depth == ie->max_dependency_depth) {
  verbose(VERB_QUERY, "maxdepth and need more nameservers, fail");
  errinf(qstate, "cannot fetch more nameservers because at max dependency depth");
  return error_response_cache(qstate, id, LDNS_RCODE_SERVFAIL);
 }
 if(iq->depth > 0 && iq->target_count &&
  iq->target_count[1] > MAX_TARGET_COUNT) {
  char s[LDNS_MAX_DOMAINLEN+1];
  dname_str(qstate->qinfo.qname, s);
  verbose(VERB_QUERY, "request %s has exceeded the maximum "
   "number of glue fetches %d", s, iq->target_count[1]);
  errinf(qstate, "exceeded the maximum number of glue fetches");
  return error_response_cache(qstate, id, LDNS_RCODE_SERVFAIL);
 }

 iter_mark_pside_cycle_targets(qstate, iq->dp);


 for(ns = iq->dp->nslist; ns; ns = ns->next) {


  if( ((ie->supports_ipv6 && !ns->done_pside6) ||
      (ie->supports_ipv4 && !ns->done_pside4)) &&
      !can_have_last_resort(qstate->env, ns->name, ns->namelen,
   iq->qchase.qclass, ((void*)0))) {
   log_nametypeclass(VERB_ALGO, "cannot pside lookup ns "
    "because it is also a stub/forward,",
    ns->name, LDNS_RR_TYPE_NS, iq->qchase.qclass);
   if(ie->supports_ipv6) ns->done_pside6 = 1;
   if(ie->supports_ipv4) ns->done_pside4 = 1;
   continue;
  }

  if(ie->supports_ipv6 && !ns->done_pside6) {

   if(!generate_parentside_target_query(qstate, iq, id,
    ns->name, ns->namelen,
    LDNS_RR_TYPE_AAAA, iq->qchase.qclass)) {
    errinf_dname(qstate, "could not generate nameserver AAAA lookup for", ns->name);
    return error_response(qstate, id,
     LDNS_RCODE_SERVFAIL);
   }
   ns->done_pside6 = 1;
   query_count++;
  }
  if(ie->supports_ipv4 && !ns->done_pside4) {

   if(!generate_parentside_target_query(qstate, iq, id,
    ns->name, ns->namelen,
    LDNS_RR_TYPE_A, iq->qchase.qclass)) {
    errinf_dname(qstate, "could not generate nameserver A lookup for", ns->name);
    return error_response(qstate, id,
     LDNS_RCODE_SERVFAIL);
   }
   ns->done_pside4 = 1;
   query_count++;
  }
  if(query_count != 0) {
   verbose(VERB_ALGO, "try parent-side glue lookup");
   iq->num_target_queries += query_count;
   target_count_increase(iq, query_count);
   qstate->ext_state[id] = module_wait_subquery;
   return 0;
  }
 }



 if(!qstate->no_cache_store && iq->query_for_pside_glue
  && !iq->pside_glue)
   iter_store_parentside_neg(qstate->env, &qstate->qinfo,
    iq->deleg_msg?iq->deleg_msg->rep:
    (iq->response?iq->response->rep:((void*)0)));

 errinf(qstate, "all servers for this domain failed,");
 errinf_dname(qstate, "at zone", iq->dp->name);
 verbose(VERB_QUERY, "out of query targets -- returning SERVFAIL");


 return error_response_cache(qstate, id, LDNS_RCODE_SERVFAIL);
}
