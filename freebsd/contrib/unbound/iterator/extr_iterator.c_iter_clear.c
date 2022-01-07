
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {int ** minfo; } ;
struct iter_qstate {scalar_t__* target_count; scalar_t__ num_current_queries; int outlist; } ;


 int free (scalar_t__*) ;
 int outbound_list_clear (int *) ;

void
iter_clear(struct module_qstate* qstate, int id)
{
 struct iter_qstate* iq;
 if(!qstate)
  return;
 iq = (struct iter_qstate*)qstate->minfo[id];
 if(iq) {
  outbound_list_clear(&iq->outlist);
  if(iq->target_count && --iq->target_count[0] == 0)
   free(iq->target_count);
  iq->num_current_queries = 0;
 }
 qstate->minfo[id] = ((void*)0);
}
