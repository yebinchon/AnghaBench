
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct TYPE_4__ {int mesh; } ;
struct worker {TYPE_1__ env; int stats; } ;
struct query_info {int dummy; } ;
struct comm_reply {TYPE_2__* c; } ;
struct TYPE_6__ {int spool_buffer; } ;
struct TYPE_5__ {int buffer; TYPE_3__* tcp_req_info; } ;


 scalar_t__ PREFETCH_EXPIRY_ADD ;
 int comm_point_send_reply (struct comm_reply*) ;
 int mesh_new_prefetch (int ,struct query_info*,int ,scalar_t__) ;
 int server_stats_prefetch (int *,struct worker*) ;
 int sldns_buffer_copy (int ,int ) ;
 scalar_t__ sldns_buffer_limit (int ) ;

__attribute__((used)) static void
reply_and_prefetch(struct worker* worker, struct query_info* qinfo,
 uint16_t flags, struct comm_reply* repinfo, time_t leeway)
{


 if(sldns_buffer_limit(repinfo->c->buffer) != 0) {
  if(repinfo->c->tcp_req_info) {
   sldns_buffer_copy(
    repinfo->c->tcp_req_info->spool_buffer,
    repinfo->c->buffer);
  }
  comm_point_send_reply(repinfo);
 }
 server_stats_prefetch(&worker->stats, worker);





 mesh_new_prefetch(worker->env.mesh, qinfo, flags, leeway +
  PREFETCH_EXPIRY_ADD);
}
