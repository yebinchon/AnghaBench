
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comm_reply {TYPE_2__* c; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__* tcp_req_info; } ;
struct TYPE_3__ {int is_drop; } ;


 scalar_t__ comm_tcp_accept ;
 scalar_t__ comm_udp ;
 int log_assert (int) ;
 int reclaim_tcp_handler (TYPE_2__*) ;

void
comm_point_drop_reply(struct comm_reply* repinfo)
{
 if(!repinfo)
  return;
 log_assert(repinfo && repinfo->c);
 log_assert(repinfo->c->type != comm_tcp_accept);
 if(repinfo->c->type == comm_udp)
  return;
 if(repinfo->c->tcp_req_info)
  repinfo->c->tcp_req_info->is_drop = 1;
 reclaim_tcp_handler(repinfo->c);
}
