
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module_qstate {int return_rcode; int * ext_state; int * return_msg; } ;
struct TYPE_2__ {char* name; } ;


 int VERB_QUERY ;
 int module_finished ;
 TYPE_1__* sldns_lookup_by_id (int ,int) ;
 int sldns_rcodes ;
 int verbose (int ,char*,char*) ;

__attribute__((used)) static int
error_response(struct module_qstate* qstate, int id, int rcode)
{
 verbose(VERB_QUERY, "return error response %s",
  sldns_lookup_by_id(sldns_rcodes, rcode)?
  sldns_lookup_by_id(sldns_rcodes, rcode)->name:"??");
 qstate->return_rcode = rcode;
 qstate->return_msg = ((void*)0);
 qstate->ext_state[id] = module_finished;
 return 0;
}
