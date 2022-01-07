
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int qname; } ;
struct module_qstate {void** ext_state; TYPE_2__* env; TYPE_1__ qinfo; } ;
struct TYPE_8__ {int qclass; } ;
struct iter_qstate {scalar_t__ depth; scalar_t__* target_count; TYPE_3__ qchase; TYPE_4__* dp; } ;
struct iter_env {scalar_t__ max_dependency_depth; scalar_t__ supports_ipv4; scalar_t__ supports_ipv6; } ;
struct delegpt_ns {int resolved; int namelen; int name; int got4; int got6; struct delegpt_ns* next; } ;
struct TYPE_9__ {struct delegpt_ns* nslist; } ;
struct TYPE_7__ {int rnd; } ;


 int LDNS_MAX_DOMAINLEN ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 scalar_t__ MAX_TARGET_COUNT ;
 int VERB_QUERY ;
 scalar_t__ delegpt_count_missing_targets (TYPE_4__*) ;
 int dname_str (int ,char*) ;
 int generate_target_query (struct module_qstate*,struct iter_qstate*,int,int ,int ,int ,int ) ;
 int iter_mark_cycle_targets (struct module_qstate*,TYPE_4__*) ;
 int iter_ns_probability (int ,int,int) ;
 int log_assert (int) ;
 void* module_wait_subquery ;
 int verbose (int ,char*,char*,scalar_t__) ;

__attribute__((used)) static int
query_for_targets(struct module_qstate* qstate, struct iter_qstate* iq,
        struct iter_env* ie, int id, int maxtargets, int* num)
{
 int query_count = 0;
 struct delegpt_ns* ns;
 int missing;
 int toget = 0;

 if(iq->depth == ie->max_dependency_depth)
  return 0;
 if(iq->depth > 0 && iq->target_count &&
  iq->target_count[1] > MAX_TARGET_COUNT) {
  char s[LDNS_MAX_DOMAINLEN+1];
  dname_str(qstate->qinfo.qname, s);
  verbose(VERB_QUERY, "request %s has exceeded the maximum "
   "number of glue fetches %d", s, iq->target_count[1]);
  return 0;
 }

 iter_mark_cycle_targets(qstate, iq->dp);
 missing = (int)delegpt_count_missing_targets(iq->dp);
 log_assert(maxtargets != 0);




 if(maxtargets < 0 || maxtargets > missing)
  toget = missing;
 else toget = maxtargets;
 if(toget == 0) {
  *num = 0;
  return 1;
 }

 log_assert(toget <= missing);


 for(ns = iq->dp->nslist; ns; ns = ns->next) {
  if(ns->resolved)
   continue;


  if(!iter_ns_probability(qstate->env->rnd, toget, missing)) {


   missing --;
   continue;
  }

  if(ie->supports_ipv6 && !ns->got6) {

   if(!generate_target_query(qstate, iq, id,
    ns->name, ns->namelen,
    LDNS_RR_TYPE_AAAA, iq->qchase.qclass)) {
    *num = query_count;
    if(query_count > 0)
     qstate->ext_state[id] = module_wait_subquery;
    return 0;
   }
   query_count++;
  }

  if(ie->supports_ipv4 && !ns->got4) {
   if(!generate_target_query(qstate, iq, id,
    ns->name, ns->namelen,
    LDNS_RR_TYPE_A, iq->qchase.qclass)) {
    *num = query_count;
    if(query_count > 0)
     qstate->ext_state[id] = module_wait_subquery;
    return 0;
   }
   query_count++;
  }


  ns->resolved = 1;
  missing--;
  toget--;
  if(toget == 0)
   break;
 }
 *num = query_count;
 if(query_count > 0)
  qstate->ext_state[id] = module_wait_subquery;

 return 1;
}
