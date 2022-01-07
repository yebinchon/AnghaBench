
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct timeval* c; } ;
struct timeval {int fd; int tcp_do_close; int tcp_do_toggle_rw; struct timeval* ev; struct timeval* timeout; scalar_t__ buffer; TYPE_3__* tcp_req_info; struct timeval* tcp_free; void* cb_arg; int * callback; TYPE_1__ repinfo; scalar_t__ dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ do_not_close; int type; int * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; scalar_t__ tcp_keepalive; int * tcl_addr; int tcp_conn_limit; int tcp_timeout_msec; struct timeval* tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; struct comm_base* base; } ;
struct sldns_buffer {int dummy; } ;
struct internal_event {int fd; int tcp_do_close; int tcp_do_toggle_rw; struct internal_event* ev; struct internal_event* timeout; scalar_t__ buffer; TYPE_3__* tcp_req_info; struct internal_event* tcp_free; void* cb_arg; int * callback; TYPE_1__ repinfo; scalar_t__ dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ do_not_close; int type; int * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; scalar_t__ tcp_keepalive; int * tcl_addr; int tcp_conn_limit; int tcp_timeout_msec; struct internal_event* tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; struct comm_base* base; } ;
struct comm_point {int fd; int tcp_do_close; int tcp_do_toggle_rw; struct comm_point* ev; struct comm_point* timeout; scalar_t__ buffer; TYPE_3__* tcp_req_info; struct comm_point* tcp_free; void* cb_arg; int * callback; TYPE_1__ repinfo; scalar_t__ dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ do_not_close; int type; int * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; scalar_t__ tcp_keepalive; int * tcl_addr; int tcp_conn_limit; int tcp_timeout_msec; struct comm_point* tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; struct comm_base* base; } ;
struct comm_base {TYPE_2__* eb; } ;
typedef int comm_point_callback_type ;
struct TYPE_7__ {struct timeval* cp; } ;
struct TYPE_6__ {int base; } ;


 short UB_EV_PERSIST ;
 short UB_EV_READ ;
 short UB_EV_TIMEOUT ;
 scalar_t__ calloc (int,int) ;
 int comm_point_tcp_handle_callback ;
 int comm_tcp ;
 int free (struct timeval*) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 int sldns_buffer_free (scalar_t__) ;
 scalar_t__ sldns_buffer_new (size_t) ;
 TYPE_3__* tcp_req_info_create (struct sldns_buffer*) ;
 int tcp_req_info_delete (TYPE_3__*) ;
 struct timeval* ub_event_new (int ,int,short,int ,struct timeval*) ;

__attribute__((used)) static struct comm_point*
comm_point_create_tcp_handler(struct comm_base *base,
 struct comm_point* parent, size_t bufsize,
 struct sldns_buffer* spoolbuf, comm_point_callback_type* callback,
 void* callback_arg)
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
 c->timeout = (struct timeval*)malloc(sizeof(struct timeval));
 if(!c->timeout) {
  sldns_buffer_free(c->buffer);
  free(c->ev);
  free(c);
  return ((void*)0);
 }
 c->tcp_is_reading = 0;
 c->tcp_byte_count = 0;
 c->tcp_parent = parent;
 c->tcp_timeout_msec = parent->tcp_timeout_msec;
 c->tcp_conn_limit = parent->tcp_conn_limit;
 c->tcl_addr = ((void*)0);
 c->tcp_keepalive = 0;
 c->max_tcp_count = 0;
 c->cur_tcp_count = 0;
 c->tcp_handlers = ((void*)0);
 c->tcp_free = ((void*)0);
 c->type = comm_tcp;
 c->tcp_do_close = 0;
 c->do_not_close = 0;
 c->tcp_do_toggle_rw = 1;
 c->tcp_check_nb_connect = 0;
 c->repinfo.c = c;
 c->callback = callback;
 c->cb_arg = callback_arg;
 if(spoolbuf) {
  c->tcp_req_info = tcp_req_info_create(spoolbuf);
  if(!c->tcp_req_info) {
   log_err("could not create tcp commpoint");
   sldns_buffer_free(c->buffer);
   free(c->timeout);
   free(c->ev);
   free(c);
   return ((void*)0);
  }
  c->tcp_req_info->cp = c;
  c->tcp_do_close = 1;
  c->tcp_do_toggle_rw = 0;
 }

 c->tcp_free = parent->tcp_free;
 parent->tcp_free = c;

 evbits = UB_EV_PERSIST | UB_EV_READ | UB_EV_TIMEOUT;
 c->ev->ev = ub_event_new(base->eb->base, c->fd, evbits,
  comm_point_tcp_handle_callback, c);
 if(c->ev->ev == ((void*)0))
 {
  log_err("could not basetset tcphdl event");
  parent->tcp_free = c->tcp_free;
  tcp_req_info_delete(c->tcp_req_info);
  sldns_buffer_free(c->buffer);
  free(c->timeout);
  free(c->ev);
  free(c);
  return ((void*)0);
 }
 return c;
}
