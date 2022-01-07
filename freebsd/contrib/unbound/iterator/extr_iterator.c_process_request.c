
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {int dummy; } ;
struct iter_qstate {int final_state; int state; } ;
struct iter_env {int dummy; } ;


 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 int VERB_ALGO ;
 int iter_handle (struct module_qstate*,struct iter_qstate*,struct iter_env*,int) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
process_request(struct module_qstate* qstate, struct iter_qstate* iq,
 struct iter_env* ie, int id)
{


 iq->state = INIT_REQUEST_STATE;
 iq->final_state = FINISHED_STATE;
 verbose(VERB_ALGO, "process_request: new external request event");
 iter_handle(qstate, iq, ie, id);
}
