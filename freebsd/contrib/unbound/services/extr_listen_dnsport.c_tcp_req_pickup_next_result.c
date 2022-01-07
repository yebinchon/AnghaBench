
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_info {scalar_t__ num_done_req; } ;
struct tcp_req_done_item {struct tcp_req_done_item* buf; int len; } ;


 int free (struct tcp_req_done_item*) ;
 struct tcp_req_done_item* tcp_req_info_pop_done (struct tcp_req_info*) ;
 int tcp_req_info_start_write_buf (struct tcp_req_info*,struct tcp_req_done_item*,int ) ;

__attribute__((used)) static void
tcp_req_pickup_next_result(struct tcp_req_info* req)
{
 if(req->num_done_req > 0) {

  struct tcp_req_done_item* item = tcp_req_info_pop_done(req);
  tcp_req_info_start_write_buf(req, item->buf, item->len);
  free(item->buf);
  free(item);
 }
}
