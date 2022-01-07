
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct module_qstate {int query_flags; TYPE_4__* return_msg; int return_rcode; int region; int prefetch_leeway; int qinfo; int env; int no_cache_store; int * ext_state; } ;
struct iter_qstate {TYPE_4__* response; TYPE_2__* dp; scalar_t__ ns_prepend_list; scalar_t__ an_prepend_list; TYPE_1__* deleg_msg; int pside_glue; scalar_t__ query_for_pside_glue; } ;
struct TYPE_9__ {TYPE_3__* rep; int qinfo; } ;
struct TYPE_8__ {int security; int flags; } ;
struct TYPE_7__ {scalar_t__ has_parent_side_NS; } ;
struct TYPE_6__ {TYPE_3__* rep; } ;


 int BIT_AA ;
 int BIT_QR ;
 int BIT_RA ;
 int BIT_RD ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_SERVFAIL ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int errinf (struct module_qstate*,char*) ;
 int error_response (struct module_qstate*,int,int ) ;
 int iter_dns_store (int ,int *,TYPE_3__*,int ,int ,int,int ,int) ;
 int iter_prepend (struct iter_qstate*,TYPE_4__*,int ) ;
 int iter_store_parentside_neg (int ,int *,TYPE_3__*) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,int *) ;
 int module_finished ;
 int sec_status_unchecked ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
processFinished(struct module_qstate* qstate, struct iter_qstate* iq,
 int id)
{
 log_query_info(VERB_QUERY, "finishing processing for",
  &qstate->qinfo);


 if(!qstate->no_cache_store && iq->query_for_pside_glue
  && !iq->pside_glue)
   iter_store_parentside_neg(qstate->env, &qstate->qinfo,
    iq->deleg_msg?iq->deleg_msg->rep:
    (iq->response?iq->response->rep:((void*)0)));
 if(!iq->response) {
  verbose(VERB_ALGO, "No response is set, servfail");
  errinf(qstate, "(no response found at query finish)");
  return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
 }



 iq->response->rep->flags |= BIT_RA;



 iq->response->rep->flags &= ~BIT_AA;


 iq->response->rep->flags |= BIT_QR;


 qstate->ext_state[id] = module_finished;





 if(iq->an_prepend_list || iq->ns_prepend_list) {
  if(!iter_prepend(iq, iq->response, qstate->region)) {
   log_err("prepend rrsets: out of memory");
   return error_response(qstate, id, LDNS_RCODE_SERVFAIL);
  }

  iq->response->qinfo = qstate->qinfo;

  iq->response->rep->security = sec_status_unchecked;



  if(!qstate->no_cache_store && qstate->query_flags&BIT_RD) {
   iter_dns_store(qstate->env, &qstate->qinfo,
    iq->response->rep, 0, qstate->prefetch_leeway,
    iq->dp&&iq->dp->has_parent_side_NS,
    qstate->region, qstate->query_flags);
  }
 }
 qstate->return_rcode = LDNS_RCODE_NOERROR;
 qstate->return_msg = iq->response;
 return 0;
}
