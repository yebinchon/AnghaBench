
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct outbound_entry {TYPE_2__* qstate; } ;
struct libworker {TYPE_3__* env; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int buffer; } ;
struct TYPE_6__ {int mesh; } ;
struct TYPE_5__ {TYPE_1__* env; } ;
struct TYPE_4__ {scalar_t__ worker; } ;


 scalar_t__ LDNS_OPCODE_WIRE (int ) ;
 scalar_t__ LDNS_PACKET_QUERY ;
 int LDNS_QDCOUNT (int ) ;
 int LDNS_QR_WIRE (int ) ;
 int NETEVENT_NOERROR ;
 int NETEVENT_TIMEOUT ;
 int mesh_report_reply (int ,struct outbound_entry*,struct comm_reply*,int) ;
 int sldns_buffer_begin (int ) ;

int
libworker_handle_service_reply(struct comm_point* c, void* arg, int error,
        struct comm_reply* reply_info)
{
 struct outbound_entry* e = (struct outbound_entry*)arg;
 struct libworker* lw = (struct libworker*)e->qstate->env->worker;

 if(error != 0) {
  mesh_report_reply(lw->env->mesh, e, reply_info, error);
  return 0;
 }

 if(!LDNS_QR_WIRE(sldns_buffer_begin(c->buffer))
  || LDNS_OPCODE_WIRE(sldns_buffer_begin(c->buffer)) !=
   LDNS_PACKET_QUERY
  || LDNS_QDCOUNT(sldns_buffer_begin(c->buffer)) > 1) {


  mesh_report_reply(lw->env->mesh, e, reply_info,
   NETEVENT_TIMEOUT);
  return 0;
 }
 mesh_report_reply(lw->env->mesh, e, reply_info, NETEVENT_NOERROR);
 return 0;
}
