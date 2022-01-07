
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qclass; } ;
struct module_qstate {TYPE_1__ qinfo; } ;
struct delegpt_ns {int resolved; int name; int namelen; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int VERB_QUERY ;
 scalar_t__ causes_cycle (struct module_qstate*,int ,int ,int ,int ) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;

void
iter_mark_cycle_targets(struct module_qstate* qstate, struct delegpt* dp)
{
 struct delegpt_ns* ns;
 for(ns = dp->nslist; ns; ns = ns->next) {
  if(ns->resolved)
   continue;

  if(causes_cycle(qstate, ns->name, ns->namelen,
   LDNS_RR_TYPE_AAAA, qstate->qinfo.qclass) ||
     causes_cycle(qstate, ns->name, ns->namelen,
   LDNS_RR_TYPE_A, qstate->qinfo.qclass)) {
   log_nametypeclass(VERB_QUERY, "skipping target due "
     "to dependency cycle (harden-glue: no may "
    "fix some of the cycles)",
    ns->name, LDNS_RR_TYPE_A,
    qstate->qinfo.qclass);
   ns->resolved = 1;
  }
 }
}
