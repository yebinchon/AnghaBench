
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct internal_event* c; } ;
struct internal_event {int fd; int tcp_do_toggle_rw; int tcp_check_nb_connect; int http_in_headers; int tcp_do_fastopen; struct internal_event* ev; scalar_t__ buffer; int ssl; void* cb_arg; int * callback; TYPE_1__ repinfo; scalar_t__ dnscrypt_buffer; scalar_t__ dnscrypt; int * http_temp; scalar_t__ http_is_chunked; scalar_t__ http_in_chunk_headers; scalar_t__ do_not_close; scalar_t__ tcp_do_close; int type; int * tcp_free; int * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; int * timeout; struct comm_base* base; } ;
struct comm_point {int fd; int tcp_do_toggle_rw; int tcp_check_nb_connect; int http_in_headers; int tcp_do_fastopen; struct comm_point* ev; scalar_t__ buffer; int ssl; void* cb_arg; int * callback; TYPE_1__ repinfo; scalar_t__ dnscrypt_buffer; scalar_t__ dnscrypt; int * http_temp; scalar_t__ http_is_chunked; scalar_t__ http_in_chunk_headers; scalar_t__ do_not_close; scalar_t__ tcp_do_close; int type; int * tcp_free; int * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; int * timeout; struct comm_base* base; } ;
struct comm_base {TYPE_2__* eb; } ;
typedef int sldns_buffer ;
typedef int comm_point_callback_type ;
struct TYPE_4__ {int base; } ;


 int SSL_free (int ) ;
 short UB_EV_PERSIST ;
 short UB_EV_WRITE ;
 scalar_t__ calloc (int,int) ;
 int comm_http ;
 int comm_point_http_handle_callback ;
 int free (struct internal_event*) ;
 int log_err (char*) ;
 int sldns_buffer_free (scalar_t__) ;
 scalar_t__ sldns_buffer_new (size_t) ;
 struct internal_event* ub_event_new (int ,int,short,int ,struct internal_event*) ;

struct comm_point*
comm_point_create_http_out(struct comm_base *base, size_t bufsize,
        comm_point_callback_type* callback, void* callback_arg,
 sldns_buffer* temp)
{
 struct comm_point* c = (struct comm_point*)calloc(1,
  sizeof(struct comm_point));
 short evbits;
 if(!c)
  return ((void*)0);
 c->ev = (struct internal_event*)calloc(1,
  sizeof(struct internal_event));
 if(!c->ev) {
  free(c);
  return ((void*)0);
 }
 c->ev->base = base;
 c->fd = -1;
 c->buffer = sldns_buffer_new(bufsize);
 if(!c->buffer) {
  free(c->ev);
  free(c);
  return ((void*)0);
 }
 c->timeout = ((void*)0);
 c->tcp_is_reading = 0;
 c->tcp_byte_count = 0;
 c->tcp_parent = ((void*)0);
 c->max_tcp_count = 0;
 c->cur_tcp_count = 0;
 c->tcp_handlers = ((void*)0);
 c->tcp_free = ((void*)0);
 c->type = comm_http;
 c->tcp_do_close = 0;
 c->do_not_close = 0;
 c->tcp_do_toggle_rw = 1;
 c->tcp_check_nb_connect = 1;
 c->http_in_headers = 1;
 c->http_in_chunk_headers = 0;
 c->http_is_chunked = 0;
 c->http_temp = temp;







 c->repinfo.c = c;
 c->callback = callback;
 c->cb_arg = callback_arg;
 evbits = UB_EV_PERSIST | UB_EV_WRITE;
 c->ev->ev = ub_event_new(base->eb->base, c->fd, evbits,
  comm_point_http_handle_callback, c);
 if(c->ev->ev == ((void*)0))
 {
  log_err("could not baseset tcpout event");



  sldns_buffer_free(c->buffer);
  free(c->ev);
  free(c);
  return ((void*)0);
 }

 return c;
}
