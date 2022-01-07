
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outbound_entry {int dummy; } ;
struct module_qstate {scalar_t__* ext_state; int no_cache_store; struct dns64_qstate** minfo; int region; int qinfo; } ;
struct dns64_qstate {scalar_t__ state; int started_no_cache_store; } ;
typedef enum module_ev { ____Placeholder_module_ev } module_ev ;


 scalar_t__ DNS64_INTERNAL_QUERY ;
 scalar_t__ DNS64_NEW_QUERY ;
 int VERB_QUERY ;
 scalar_t__ handle_event_moddone (struct module_qstate*,int) ;
 scalar_t__ handle_event_pass (struct module_qstate*,int) ;
 int log_query_info (int ,char*,int *) ;



 scalar_t__ module_finished ;
 scalar_t__ regional_alloc (int ,int) ;
 int strextstate (scalar_t__) ;
 int strmodulevent (int) ;
 int verbose (int ,char*,int,int ,int ) ;

void
dns64_operate(struct module_qstate* qstate, enum module_ev event, int id,
  struct outbound_entry* outbound)
{
 struct dns64_qstate* iq;
 (void)outbound;
 verbose(VERB_QUERY, "dns64[module %d] operate: extstate:%s event:%s",
   id, strextstate(qstate->ext_state[id]),
   strmodulevent(event));
 log_query_info(VERB_QUERY, "dns64 operate: query", &qstate->qinfo);

 switch(event) {
  case 129:

   iq = (struct dns64_qstate*)regional_alloc(
    qstate->region, sizeof(*iq));
   qstate->minfo[id] = iq;
   iq->state = DNS64_NEW_QUERY;
   iq->started_no_cache_store = qstate->no_cache_store;
   qstate->no_cache_store = 1;

  case 128:
   qstate->ext_state[id] = handle_event_pass(qstate, id);
   break;
  case 130:
   qstate->ext_state[id] = handle_event_moddone(qstate, id);
   break;
  default:
   qstate->ext_state[id] = module_finished;
   break;
 }
 if(qstate->ext_state[id] == module_finished) {
  iq = (struct dns64_qstate*)qstate->minfo[id];
  if(iq && iq->state != DNS64_INTERNAL_QUERY)
   qstate->no_cache_store = iq->started_no_cache_store;
 }
}
