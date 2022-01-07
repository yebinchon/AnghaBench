
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_qstate {int state; } ;
struct val_env {int dummy; } ;
struct module_qstate {int dummy; } ;







 int VERB_ALGO ;
 int log_warn (char*,int) ;
 int processDLVLookup (struct module_qstate*,struct val_qstate*,struct val_env*,int) ;
 int processFindKey (struct module_qstate*,struct val_qstate*,int) ;
 int processFinished (struct module_qstate*,struct val_qstate*,struct val_env*,int) ;
 int processInit (struct module_qstate*,struct val_qstate*,struct val_env*,int) ;
 int processValidate (struct module_qstate*,struct val_qstate*,struct val_env*,int) ;
 int val_state_to_string (int) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static void
val_handle(struct module_qstate* qstate, struct val_qstate* vq,
 struct val_env* ve, int id)
{
 int cont = 1;
 while(cont) {
  verbose(VERB_ALGO, "val handle processing q with state %s",
   val_state_to_string(vq->state));
  switch(vq->state) {
   case 129:
    cont = processInit(qstate, vq, ve, id);
    break;
   case 131:
    cont = processFindKey(qstate, vq, id);
    break;
   case 128:
    cont = processValidate(qstate, vq, ve, id);
    break;
   case 130:
    cont = processFinished(qstate, vq, ve, id);
    break;
   case 132:
    cont = processDLVLookup(qstate, vq, ve, id);
    break;
   default:
    log_warn("validator: invalid state %d",
     vq->state);
    cont = 0;
    break;
  }
 }
}
