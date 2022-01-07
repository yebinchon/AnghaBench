
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {scalar_t__ type; int fd; int tcp_is_reading; int tcp_timeout_msec; scalar_t__ tcp_byte_count; int dnscrypt_buffer; scalar_t__ dnscrypt; int buffer; } ;


 int TCP_QUERY_TIMEOUT_MINIMUM ;
 int comm_point_start_listening (struct comm_point*,int,int) ;
 scalar_t__ comm_tcp ;
 int log_assert (int) ;
 int sldns_buffer_clear (int ) ;

__attribute__((used)) static void
setup_tcp_handler(struct comm_point* c, int fd, int cur, int max)
{
 int handler_usage;
 log_assert(c->type == comm_tcp);
 log_assert(c->fd == -1);
 sldns_buffer_clear(c->buffer);




 c->tcp_is_reading = 1;
 c->tcp_byte_count = 0;
 handler_usage = (cur * 100) / max;
 if(handler_usage > 50 && handler_usage <= 65)
  c->tcp_timeout_msec /= 100;
 else if (handler_usage > 65 && handler_usage <= 80)
  c->tcp_timeout_msec /= 500;
 else if (handler_usage > 80)
  c->tcp_timeout_msec = 0;
 comm_point_start_listening(c, fd,
  c->tcp_timeout_msec < TCP_QUERY_TIMEOUT_MINIMUM
   ? TCP_QUERY_TIMEOUT_MINIMUM
   : c->tcp_timeout_msec);
}
