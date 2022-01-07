
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {int dummy; } ;
struct iter_qstate {int state; } ;
struct iter_env {int dummy; } ;
 int VERB_ALGO ;
 int iter_state_to_string (int) ;
 int log_warn (char*,int) ;
 int processCollectClass (struct module_qstate*,int) ;
 int processDSNSFind (struct module_qstate*,struct iter_qstate*,int) ;
 int processFinished (struct module_qstate*,struct iter_qstate*,int) ;
 int processInitRequest (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ;
 int processInitRequest2 (struct module_qstate*,struct iter_qstate*,int) ;
 int processInitRequest3 (struct module_qstate*,struct iter_qstate*,int) ;
 int processPrimeResponse (struct module_qstate*,int) ;
 int processQueryResponse (struct module_qstate*,struct iter_qstate*,int) ;
 int processQueryTargets (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static void
iter_handle(struct module_qstate* qstate, struct iter_qstate* iq,
 struct iter_env* ie, int id)
{
 int cont = 1;
 while(cont) {
  verbose(VERB_ALGO, "iter_handle processing q with state %s",
   iter_state_to_string(iq->state));
  switch(iq->state) {
   case 131:
    cont = processInitRequest(qstate, iq, ie, id);
    break;
   case 133:
    cont = processInitRequest2(qstate, iq, id);
    break;
   case 132:
    cont = processInitRequest3(qstate, iq, id);
    break;
   case 129:
    cont = processQueryTargets(qstate, iq, ie, id);
    break;
   case 128:
    cont = processQueryResponse(qstate, iq, id);
    break;
   case 130:
    cont = processPrimeResponse(qstate, id);
    break;
   case 136:
    cont = processCollectClass(qstate, id);
    break;
   case 135:
    cont = processDSNSFind(qstate, iq, id);
    break;
   case 134:
    cont = processFinished(qstate, iq, id);
    break;
   default:
    log_warn("iterator: invalid state: %d",
     iq->state);
    cont = 0;
    break;
  }
 }
}
