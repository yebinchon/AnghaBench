
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_req_info {int is_reply; TYPE_1__* cp; int spool_buffer; scalar_t__ in_worker_handle; } ;
struct TYPE_3__ {scalar_t__ tcp_byte_count; int repinfo; int tcp_timeout_msec; scalar_t__ tcp_is_reading; int buffer; } ;


 int comm_point_drop_reply (int *) ;
 int comm_point_start_listening (TYPE_1__*,int,int ) ;
 int comm_point_stop_listening (TYPE_1__*) ;
 int sldns_buffer_begin (int ) ;
 int sldns_buffer_clear (int ) ;
 int sldns_buffer_flip (int ) ;
 int sldns_buffer_limit (int ) ;
 int sldns_buffer_write (int ,int ,int ) ;
 int tcp_req_info_add_result (struct tcp_req_info*,int ,int ) ;
 int tcp_req_info_start_write_buf (struct tcp_req_info*,int ,int ) ;

void
tcp_req_info_send_reply(struct tcp_req_info* req)
{
 if(req->in_worker_handle) {



  sldns_buffer_clear(req->cp->buffer);
  sldns_buffer_write(req->cp->buffer,
   sldns_buffer_begin(req->spool_buffer),
   sldns_buffer_limit(req->spool_buffer));
  sldns_buffer_flip(req->cp->buffer);
  req->is_reply = 1;
  return;
 }






 if(req->cp->tcp_is_reading && req->cp->tcp_byte_count == 0) {


  tcp_req_info_start_write_buf(req,
   sldns_buffer_begin(req->spool_buffer),
   sldns_buffer_limit(req->spool_buffer));

  comm_point_stop_listening(req->cp);
  comm_point_start_listening(req->cp, -1,
   req->cp->tcp_timeout_msec);
  return;
 }

 if(!tcp_req_info_add_result(req, sldns_buffer_begin(req->spool_buffer),
  sldns_buffer_limit(req->spool_buffer))) {

  comm_point_drop_reply(&req->cp->repinfo);
 }
}
