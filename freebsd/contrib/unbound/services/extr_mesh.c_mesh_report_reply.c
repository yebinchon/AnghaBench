
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct outbound_entry {TYPE_1__* qstate; } ;
struct mesh_area {int dummy; } ;
struct comm_reply {int dummy; } ;
typedef enum module_ev { ____Placeholder_module_ev } module_ev ;
struct TYPE_2__ {int mesh_info; struct comm_reply* reply; } ;


 int NETEVENT_CAPSFAIL ;
 int NETEVENT_NOERROR ;
 int mesh_run (struct mesh_area*,int ,int,struct outbound_entry*) ;
 int module_event_capsfail ;
 int module_event_noreply ;
 int module_event_reply ;

void mesh_report_reply(struct mesh_area* mesh, struct outbound_entry* e,
        struct comm_reply* reply, int what)
{
 enum module_ev event = module_event_reply;
 e->qstate->reply = reply;
 if(what != NETEVENT_NOERROR) {
  event = module_event_noreply;
  if(what == NETEVENT_CAPSFAIL)
   event = module_event_capsfail;
 }
 mesh_run(mesh, e->qstate->mesh_info, event, e);
}
