
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {int qclass; } ;
struct module_qstate {TYPE_1__ qinfo; TYPE_2__* env; scalar_t__ prefetch_leeway; int region; int blacklist; scalar_t__* minfo; } ;
struct iter_qstate {int query_for_pside_glue; int refetch_glue; TYPE_3__* dp; void* dnssec_expected; int deleg_msg; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {scalar_t__* now; } ;


 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 int VERB_QUERY ;
 TYPE_3__* delegpt_copy (TYPE_3__*,int ) ;
 scalar_t__ dname_subdomain_c (int *,int ) ;
 TYPE_3__* dns_cache_find_delegation (TYPE_2__*,int *,size_t,int ,int ,int ,int *,scalar_t__) ;
 int generate_sub_request (int *,size_t,int ,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int ) ;
 void* iter_indicates_dnssec (TYPE_2__*,TYPE_3__*,int *,int ) ;
 int log_nametypeclass (int ,char*,int *,int ,int ) ;
 int sock_list_insert (int *,int *,int ,int ) ;

__attribute__((used)) static int
generate_parentside_target_query(struct module_qstate* qstate,
 struct iter_qstate* iq, int id, uint8_t* name, size_t namelen,
 uint16_t qtype, uint16_t qclass)
{
 struct module_qstate* subq;
 if(!generate_sub_request(name, namelen, qtype, qclass, qstate,
  id, iq, INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0))
  return 0;
 if(subq) {
  struct iter_qstate* subiq =
   (struct iter_qstate*)subq->minfo[id];

  sock_list_insert(&subq->blacklist, ((void*)0), 0, subq->region);
  subiq->query_for_pside_glue = 1;
  if(dname_subdomain_c(name, iq->dp->name)) {
   subiq->dp = delegpt_copy(iq->dp, subq->region);
   subiq->dnssec_expected = iter_indicates_dnssec(
    qstate->env, subiq->dp, ((void*)0),
    subq->qinfo.qclass);
   subiq->refetch_glue = 1;
  } else {
   subiq->dp = dns_cache_find_delegation(qstate->env,
    name, namelen, qtype, qclass, subq->region,
    &subiq->deleg_msg,
    *qstate->env->now+subq->prefetch_leeway);

   if(subiq->dp) {
    subiq->dnssec_expected = iter_indicates_dnssec(
     qstate->env, subiq->dp, ((void*)0),
     subq->qinfo.qclass);
    subiq->refetch_glue = 1;
   }
  }
 }
 log_nametypeclass(VERB_QUERY, "new pside target", name, qtype, qclass);
 return 1;
}
