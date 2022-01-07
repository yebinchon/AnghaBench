
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ qtype; int qname_len; int qname; } ;
struct module_qstate {TYPE_2__ qinfo; int region; int env; scalar_t__* minfo; } ;
struct TYPE_3__ {int qclass; } ;
struct iter_qstate {int state; int * dp; TYPE_1__ qchase; int num_target_queries; } ;
struct delegpt_ns {int resolved; } ;


 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 int QUERYTARGETS_STATE ;
 int VERB_ALGO ;
 int cache_fill_missing (int ,int ,int ,int *) ;
 struct delegpt_ns* delegpt_find_ns (int *,int ,int ) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,TYPE_2__*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
error_supers(struct module_qstate* qstate, int id, struct module_qstate* super)
{
 struct iter_qstate* super_iq = (struct iter_qstate*)super->minfo[id];

 if(qstate->qinfo.qtype == LDNS_RR_TYPE_A ||
  qstate->qinfo.qtype == LDNS_RR_TYPE_AAAA) {

  struct delegpt_ns* dpns = ((void*)0);
  super_iq->num_target_queries--;
  if(super_iq->dp)
   dpns = delegpt_find_ns(super_iq->dp,
    qstate->qinfo.qname, qstate->qinfo.qname_len);
  if(!dpns) {





   verbose(VERB_ALGO, "subq error, but not interested");
   log_query_info(VERB_ALGO, "superq", &super->qinfo);
   return;
  } else {

   if(!cache_fill_missing(super->env, super_iq->qchase.qclass,
    super->region, super_iq->dp))
    log_err("out of memory adding missing");
  }
  dpns->resolved = 1;
 }
 if(qstate->qinfo.qtype == LDNS_RR_TYPE_NS) {

  super_iq->dp = ((void*)0);
 }

 super_iq->state = QUERYTARGETS_STATE;

}
