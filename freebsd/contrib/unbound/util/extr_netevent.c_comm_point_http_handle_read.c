
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {scalar_t__ type; scalar_t__ ssl_shake_state; int buffer; int http_is_chunked; scalar_t__ http_in_chunk_headers; scalar_t__ http_in_headers; scalar_t__ ssl; int tcp_is_reading; } ;


 scalar_t__ comm_http ;
 scalar_t__ comm_ssl_shake_none ;
 int http_chunked_segment (struct comm_point*) ;
 int http_header_done (int ) ;
 int http_moveover_buffer (int ) ;
 int http_nonchunk_segment (struct comm_point*) ;
 int http_process_chunk_header (struct comm_point*) ;
 int http_process_initial_header (struct comm_point*) ;
 int http_read_more (int,struct comm_point*) ;
 int log_assert (int) ;
 int sldns_buffer_flip (int ) ;
 scalar_t__ sldns_buffer_remaining (int ) ;
 int ssl_handshake (struct comm_point*) ;
 int ssl_http_read_more (struct comm_point*) ;

__attribute__((used)) static int
comm_point_http_handle_read(int fd, struct comm_point* c)
{
 log_assert(c->type == comm_http);
 log_assert(fd != -1);
 if(!c->tcp_is_reading)
  return 1;

 if(c->ssl) {
  if(!ssl_http_read_more(c))
   return 0;
 } else {
  if(!http_read_more(fd, c))
   return 0;
 }

 sldns_buffer_flip(c->buffer);
 while(sldns_buffer_remaining(c->buffer) > 0) {

  if(c->http_in_headers || c->http_in_chunk_headers) {

   if(!http_header_done(c->buffer)) {


    http_moveover_buffer(c->buffer);

    return 1;
   }
   if(!c->http_in_chunk_headers) {

    if(!http_process_initial_header(c))
     return 0;
   } else {

    int r = http_process_chunk_header(c);
    if(r == 0) return 0;
    if(r == 2) return 1;

   }

   continue;
  }

  if(!c->http_is_chunked) {

   return http_nonchunk_segment(c);
  } else {

   int r = http_chunked_segment(c);
   if(r == 0) return 0;
   if(r == 1) return 1;
   continue;
  }
 }



 http_moveover_buffer(c->buffer);

 return 1;
}
