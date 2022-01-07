
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qclass; scalar_t__ qtype; } ;
struct module_qstate {scalar_t__ return_rcode; scalar_t__ is_priming; scalar_t__* minfo; TYPE_1__ qinfo; } ;
struct iter_qstate {scalar_t__ state; } ;


 scalar_t__ DSNS_FIND_STATE ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RR_CLASS_ANY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int error_supers (struct module_qstate*,int,struct module_qstate*) ;
 int prime_supers (struct module_qstate*,int,struct module_qstate*) ;
 int processClassResponse (struct module_qstate*,int,struct module_qstate*) ;
 int processDSNSResponse (struct module_qstate*,int,struct module_qstate*) ;
 int processTargetResponse (struct module_qstate*,int,struct module_qstate*) ;

void
iter_inform_super(struct module_qstate* qstate, int id,
 struct module_qstate* super)
{
 if(!qstate->is_priming && super->qinfo.qclass == LDNS_RR_CLASS_ANY)
  processClassResponse(qstate, id, super);
 else if(super->qinfo.qtype == LDNS_RR_TYPE_DS && ((struct iter_qstate*)
  super->minfo[id])->state == DSNS_FIND_STATE)
  processDSNSResponse(qstate, id, super);
 else if(qstate->return_rcode != LDNS_RCODE_NOERROR)
  error_supers(qstate, id, super);
 else if(qstate->is_priming)
  prime_supers(qstate, id, super);
 else processTargetResponse(qstate, id, super);
}
