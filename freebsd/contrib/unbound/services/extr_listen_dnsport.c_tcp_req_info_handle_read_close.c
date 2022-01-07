
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_req_info {scalar_t__ num_done_req; scalar_t__ num_open_req; int read_is_closed; TYPE_1__* cp; } ;
struct TYPE_2__ {scalar_t__ tcp_byte_count; int fd; } ;


 int VERB_ALGO ;
 int tcp_req_info_setup_listen (struct tcp_req_info*) ;
 int tcp_req_pickup_next_result (struct tcp_req_info*) ;
 int verbose (int ,char*,int ) ;

int
tcp_req_info_handle_read_close(struct tcp_req_info* req)
{
 verbose(VERB_ALGO, "tcp channel read side closed %d", req->cp->fd);

 req->cp->tcp_byte_count = 0;

 if(req->num_done_req != 0) {
  tcp_req_pickup_next_result(req);
  tcp_req_info_setup_listen(req);
  return 1;
 }

 if(req->num_open_req == 0 && req->num_done_req == 0)
  return 0;

 req->read_is_closed = 1;
 tcp_req_info_setup_listen(req);
 return 1;
}
