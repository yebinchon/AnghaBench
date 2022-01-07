
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {scalar_t__ return_rcode; int region; int return_msg; int qinfo; scalar_t__ is_priming; scalar_t__* minfo; } ;
struct iter_qstate {void* state; scalar_t__ wait_priming_stub; struct delegpt* dp; int deleg_msg; } ;
struct delegpt {int dummy; } ;


 void* INIT_REQUEST_2_STATE ;
 void* INIT_REQUEST_3_STATE ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 void* QUERYTARGETS_STATE ;
 int VERB_ALGO ;
 int VERB_DETAIL ;
 struct delegpt* delegpt_from_message (int ,int ) ;
 int delegpt_log (int ,struct delegpt*) ;
 int dns_copy_msg (int ,int ) ;
 int log_assert (int) ;
 int log_err (char*) ;
 int log_query_info (int ,char*,int *) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
prime_supers(struct module_qstate* qstate, int id, struct module_qstate* forq)
{
 struct iter_qstate* foriq = (struct iter_qstate*)forq->minfo[id];
 struct delegpt* dp = ((void*)0);

 log_assert(qstate->is_priming || foriq->wait_priming_stub);
 log_assert(qstate->return_rcode == LDNS_RCODE_NOERROR);

 dp = delegpt_from_message(qstate->return_msg, forq->region);
 if(!dp) {


  verbose(VERB_ALGO, "prime response was not a positive "
   "ANSWER; failing");
  foriq->dp = ((void*)0);
  foriq->state = QUERYTARGETS_STATE;
  return;
 }

 log_query_info(VERB_DETAIL, "priming successful for", &qstate->qinfo);
 delegpt_log(VERB_ALGO, dp);
 foriq->dp = dp;
 foriq->deleg_msg = dns_copy_msg(qstate->return_msg, forq->region);
 if(!foriq->deleg_msg) {
  log_err("copy prime response: out of memory");
  foriq->dp = ((void*)0);
  foriq->state = QUERYTARGETS_STATE;
  return;
 }



 if(foriq->wait_priming_stub) {
  foriq->state = INIT_REQUEST_3_STATE;
  foriq->wait_priming_stub = 0;
 } else foriq->state = INIT_REQUEST_2_STATE;

}
