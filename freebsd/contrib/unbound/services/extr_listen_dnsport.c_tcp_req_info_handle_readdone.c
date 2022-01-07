
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_info {int in_worker_handle; scalar_t__ is_reply; scalar_t__ is_drop; int spool_buffer; struct comm_point* cp; } ;
struct comm_point {int buffer; int tcp_timeout_msec; scalar_t__ tcp_is_reading; int repinfo; int cb_arg; scalar_t__ (* callback ) (struct comm_point*,int ,int ,int *) ;} ;


 int NETEVENT_NOERROR ;
 int comm_point_start_listening (struct comm_point*,int,int ) ;
 int comm_point_stop_listening (struct comm_point*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (scalar_t__ (*) (struct comm_point*,int ,int ,int *)) ;
 int sldns_buffer_clear (int ) ;
 int sldns_buffer_set_limit (int ,int ) ;
 scalar_t__ stub1 (struct comm_point*,int ,int ,int *) ;
 int tcp_req_info_setup_listen (struct tcp_req_info*) ;
 int tcp_req_pickup_next_result (struct tcp_req_info*) ;

void
tcp_req_info_handle_readdone(struct tcp_req_info* req)
{
 struct comm_point* c = req->cp;




 req->is_drop = 0;
 req->is_reply = 0;
 req->in_worker_handle = 1;
 sldns_buffer_set_limit(req->spool_buffer, 0);




 fptr_ok(fptr_whitelist_comm_point(c->callback));
 if( (*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, &c->repinfo) ) {
  req->in_worker_handle = 0;




 send_it:
  c->tcp_is_reading = 0;
  comm_point_stop_listening(c);
  comm_point_start_listening(c, -1, c->tcp_timeout_msec);
  return;
 }
 req->in_worker_handle = 0;



 if(req->is_drop) {

  return;
 }


 if(req->is_reply) {
  goto send_it;
 }

 sldns_buffer_clear(c->buffer);

 tcp_req_pickup_next_result(req);



 tcp_req_info_setup_listen(req);
}
