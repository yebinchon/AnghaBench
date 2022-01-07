
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {scalar_t__ type; scalar_t__ ssl_shake_state; int tcp_is_reading; scalar_t__ tcp_byte_count; scalar_t__ tcp_do_toggle_rw; int buffer; scalar_t__ ssl; scalar_t__ tcp_check_nb_connect; } ;


 scalar_t__ comm_http ;
 int comm_point_start_listening (struct comm_point*,int,int) ;
 int comm_point_stop_listening (struct comm_point*) ;
 scalar_t__ comm_ssl_shake_none ;
 int http_check_connect (int,struct comm_point*) ;
 int http_write_more (int,struct comm_point*) ;
 int log_assert (int) ;
 int sldns_buffer_clear (int ) ;
 scalar_t__ sldns_buffer_remaining (int ) ;
 int ssl_handshake (struct comm_point*) ;
 int ssl_http_write_more (struct comm_point*) ;

__attribute__((used)) static int
comm_point_http_handle_write(int fd, struct comm_point* c)
{
 log_assert(c->type == comm_http);
 log_assert(fd != -1);



 if(c->tcp_check_nb_connect) {
  int r = http_check_connect(fd, c);
  if(r == 0) return 0;
  if(r == 1) return 1;
  c->tcp_check_nb_connect = 0;
 }
 if(c->tcp_is_reading)
  return 1;

 if(c->ssl) {
  if(!ssl_http_write_more(c))
   return 0;
 } else {
  if(!http_write_more(fd, c))
   return 0;
 }




 if(sldns_buffer_remaining(c->buffer) == 0) {
  sldns_buffer_clear(c->buffer);
  if(c->tcp_do_toggle_rw)
   c->tcp_is_reading = 1;
  c->tcp_byte_count = 0;

  comm_point_stop_listening(c);
  comm_point_start_listening(c, -1, -1);
 }
 return 1;
}
