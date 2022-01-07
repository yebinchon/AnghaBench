
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mesh; } ;
struct worker {TYPE_2__ env; } ;
struct outbound_entry {int * qsent; struct module_qstate* qstate; } ;
struct module_qstate {TYPE_1__* env; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int buffer; } ;
struct TYPE_3__ {struct worker* worker; } ;


 scalar_t__ LDNS_OPCODE_WIRE (int ) ;
 scalar_t__ LDNS_PACKET_QUERY ;
 int LDNS_QDCOUNT (int ) ;
 int LDNS_QR_WIRE (int ) ;
 int NETEVENT_NOERROR ;
 int NETEVENT_TIMEOUT ;
 int mesh_report_reply (int ,struct outbound_entry*,struct comm_reply*,int) ;
 int sldns_buffer_begin (int ) ;
 int worker_mem_report (struct worker*,int *) ;

int
worker_handle_reply(struct comm_point* c, void* arg, int error,
 struct comm_reply* reply_info)
{
 struct module_qstate* q = (struct module_qstate*)arg;
 struct worker* worker = q->env->worker;
 struct outbound_entry e;
 e.qstate = q;
 e.qsent = ((void*)0);

 if(error != 0) {
  mesh_report_reply(worker->env.mesh, &e, reply_info, error);
  worker_mem_report(worker, ((void*)0));
  return 0;
 }

 if(!LDNS_QR_WIRE(sldns_buffer_begin(c->buffer))
  || LDNS_OPCODE_WIRE(sldns_buffer_begin(c->buffer)) !=
   LDNS_PACKET_QUERY
  || LDNS_QDCOUNT(sldns_buffer_begin(c->buffer)) > 1) {


  mesh_report_reply(worker->env.mesh, &e, reply_info,
   NETEVENT_TIMEOUT);
  worker_mem_report(worker, ((void*)0));
  return 0;
 }
 mesh_report_reply(worker->env.mesh, &e, reply_info, NETEVENT_NOERROR);
 worker_mem_report(worker, ((void*)0));
 return 0;
}
