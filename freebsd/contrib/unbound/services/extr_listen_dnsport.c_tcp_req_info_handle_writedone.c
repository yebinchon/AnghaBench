
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_req_info {scalar_t__ num_done_req; TYPE_1__* cp; scalar_t__ read_is_closed; } ;
struct TYPE_2__ {int tcp_is_reading; int repinfo; int buffer; } ;


 int comm_point_drop_reply (int *) ;
 int sldns_buffer_clear (int ) ;
 int tcp_req_info_setup_listen (struct tcp_req_info*) ;
 int tcp_req_pickup_next_result (struct tcp_req_info*) ;

void
tcp_req_info_handle_writedone(struct tcp_req_info* req)
{

 sldns_buffer_clear(req->cp->buffer);
 if(req->num_done_req == 0 && req->read_is_closed) {

  comm_point_drop_reply(&req->cp->repinfo);
  return;
 }
 req->cp->tcp_is_reading = 1;

 tcp_req_pickup_next_result(req);




 tcp_req_info_setup_listen(req);
}
