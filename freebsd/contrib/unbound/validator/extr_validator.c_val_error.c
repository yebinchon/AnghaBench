
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {int return_rcode; int * ext_state; } ;


 int LDNS_RCODE_SERVFAIL ;
 int module_error ;

__attribute__((used)) static int
val_error(struct module_qstate* qstate, int id)
{
 qstate->ext_state[id] = module_error;
 qstate->return_rcode = LDNS_RCODE_SERVFAIL;
 return 0;
}
