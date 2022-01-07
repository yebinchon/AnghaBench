
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct sldns_buffer {int dummy; } ;
struct comm_reply {TYPE_3__* c; int addr; int addrlen; scalar_t__ srctype; } ;
struct TYPE_8__ {scalar_t__ type; int tcp_timeout_msec; scalar_t__ tcp_req_info; struct sldns_buffer* buffer; TYPE_1__* tcp_parent; TYPE_2__* dtenv; struct sldns_buffer* dnscrypt_buffer; } ;
struct TYPE_7__ {scalar_t__ log_client_response_messages; } ;
struct TYPE_6__ {TYPE_2__* dtenv; } ;


 int comm_point_send_udp_msg (TYPE_3__*,struct sldns_buffer*,struct sockaddr*,int ) ;
 int comm_point_send_udp_msg_if (TYPE_3__*,struct sldns_buffer*,struct sockaddr*,int ,struct comm_reply*) ;
 int comm_point_start_listening (TYPE_3__*,int,int ) ;
 scalar_t__ comm_udp ;
 int dnsc_handle_uncurved_request (struct comm_reply*) ;
 int dt_msg_send_client_response (TYPE_2__*,int *,scalar_t__,struct sldns_buffer*) ;
 int log_assert (int) ;
 int tcp_req_info_send_reply (scalar_t__) ;

void
comm_point_send_reply(struct comm_reply *repinfo)
{
 struct sldns_buffer* buffer;
 log_assert(repinfo && repinfo->c);






 buffer = repinfo->c->buffer;

 if(repinfo->c->type == comm_udp) {
  if(repinfo->srctype)
   comm_point_send_udp_msg_if(repinfo->c,
   buffer, (struct sockaddr*)&repinfo->addr,
   repinfo->addrlen, repinfo);
  else
   comm_point_send_udp_msg(repinfo->c, buffer,
   (struct sockaddr*)&repinfo->addr, repinfo->addrlen);






 } else {






  if(repinfo->c->tcp_req_info) {
   tcp_req_info_send_reply(repinfo->c->tcp_req_info);
  } else {
   comm_point_start_listening(repinfo->c, -1,
    repinfo->c->tcp_timeout_msec);
  }
 }
}
