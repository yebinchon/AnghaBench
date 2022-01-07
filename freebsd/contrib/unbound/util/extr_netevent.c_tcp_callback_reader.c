
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {scalar_t__ type; int tcp_timeout_msec; int repinfo; int cb_arg; scalar_t__ (* callback ) (struct comm_point*,int ,int ,int *) ;scalar_t__ tcp_req_info; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; scalar_t__ tcp_do_toggle_rw; int buffer; } ;


 int NETEVENT_NOERROR ;
 scalar_t__ comm_local ;
 int comm_point_start_listening (struct comm_point*,int,int ) ;
 int comm_point_stop_listening (struct comm_point*) ;
 scalar_t__ comm_tcp ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (scalar_t__ (*) (struct comm_point*,int ,int ,int *)) ;
 int log_assert (int) ;
 int sldns_buffer_flip (int ) ;
 scalar_t__ stub1 (struct comm_point*,int ,int ,int *) ;
 int tcp_req_info_handle_readdone (scalar_t__) ;

__attribute__((used)) static void
tcp_callback_reader(struct comm_point* c)
{
 log_assert(c->type == comm_tcp || c->type == comm_local);
 sldns_buffer_flip(c->buffer);
 if(c->tcp_do_toggle_rw)
  c->tcp_is_reading = 0;
 c->tcp_byte_count = 0;
 if(c->tcp_req_info) {
  tcp_req_info_handle_readdone(c->tcp_req_info);
 } else {
  if(c->type == comm_tcp)
   comm_point_stop_listening(c);
  fptr_ok(fptr_whitelist_comm_point(c->callback));
  if( (*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, &c->repinfo) ) {
   comm_point_start_listening(c, -1, c->tcp_timeout_msec);
  }
 }
}
