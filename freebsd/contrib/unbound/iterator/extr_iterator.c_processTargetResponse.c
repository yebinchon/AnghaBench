
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dname; int dname_len; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct TYPE_6__ {int qname_len; int qname; } ;
struct module_qstate {scalar_t__ return_rcode; int region; TYPE_1__* return_msg; TYPE_3__ qinfo; scalar_t__* minfo; } ;
struct iter_qstate {int dp; int qchase; struct ub_packed_rrset_key* pside_glue; int num_target_queries; int state; } ;
struct delegpt_ns {int lame; int resolved; } ;
struct TYPE_4__ {int rep; } ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 int QUERYTARGETS_STATE ;
 int VERB_ALGO ;
 int delegpt_add_ns (int ,int ,int ,int) ;
 int delegpt_add_rrset (int ,int ,struct ub_packed_rrset_key*,int) ;
 struct delegpt_ns* delegpt_find_ns (int ,int ,int ) ;
 int delegpt_log (int ,int ) ;
 int log_assert (int) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,TYPE_3__*) ;
 int log_rrset_key (int ,char*,struct ub_packed_rrset_key*) ;
 struct ub_packed_rrset_key* reply_find_answer_rrset (int *,int ) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
processTargetResponse(struct module_qstate* qstate, int id,
 struct module_qstate* forq)
{
 struct iter_qstate* iq = (struct iter_qstate*)qstate->minfo[id];
 struct iter_qstate* foriq = (struct iter_qstate*)forq->minfo[id];
 struct ub_packed_rrset_key* rrset;
 struct delegpt_ns* dpns;
 log_assert(qstate->return_rcode == LDNS_RCODE_NOERROR);

 foriq->state = QUERYTARGETS_STATE;
 log_query_info(VERB_ALGO, "processTargetResponse", &qstate->qinfo);
 log_query_info(VERB_ALGO, "processTargetResponse super", &forq->qinfo);



 foriq->num_target_queries--;


 if(!foriq->dp) {
  verbose(VERB_ALGO, "subq: parent not interested, was reset");
  return;
 }
 dpns = delegpt_find_ns(foriq->dp, qstate->qinfo.qname,
   qstate->qinfo.qname_len);
 if(!dpns) {

  verbose(VERB_ALGO, "subq: parent not interested anymore");


  return;
 }


 if(iq->pside_glue) {



  log_rrset_key(VERB_ALGO, "add parentside glue to dp",
   iq->pside_glue);
  if(!delegpt_add_rrset(foriq->dp, forq->region,
   iq->pside_glue, 1))
   log_err("out of memory adding pside glue");
 }






 rrset = reply_find_answer_rrset(&iq->qchase, qstate->return_msg->rep);
 if(rrset) {


  if(!delegpt_find_ns(foriq->dp, rrset->rk.dname,
   rrset->rk.dname_len)) {

   if(!delegpt_add_ns(foriq->dp, forq->region,
    rrset->rk.dname, dpns->lame))
    log_err("out of memory adding cnamed-ns");
  }

  if(!delegpt_add_rrset(foriq->dp, forq->region, rrset,
   dpns->lame))
   log_err("out of memory adding targets");
  verbose(VERB_ALGO, "added target response");
  delegpt_log(VERB_ALGO, foriq->dp);
 } else {
  verbose(VERB_ALGO, "iterator TargetResponse failed");
  dpns->resolved = 1;
 }
}
