
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcl_list {int dummy; } ;
struct sldns_buffer {int dummy; } ;
struct internal_event {int fd; int tcp_timeout_msec; int max_tcp_count; struct internal_event** tcp_handlers; int * timeout; struct internal_event* ev; int * cb_arg; int * callback; int * dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ tcp_do_toggle_rw; scalar_t__ do_not_close; scalar_t__ tcp_do_close; int type; int * tcp_free; scalar_t__ cur_tcp_count; int * tcp_parent; scalar_t__ tcp_keepalive; int * tcl_addr; struct tcl_list* tcp_conn_limit; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; int * buffer; struct comm_base* base; } ;
struct comm_point {int fd; int tcp_timeout_msec; int max_tcp_count; struct comm_point** tcp_handlers; int * timeout; struct comm_point* ev; int * cb_arg; int * callback; int * dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ tcp_do_toggle_rw; scalar_t__ do_not_close; scalar_t__ tcp_do_close; int type; int * tcp_free; scalar_t__ cur_tcp_count; int * tcp_parent; scalar_t__ tcp_keepalive; int * tcl_addr; struct tcl_list* tcp_conn_limit; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; int * buffer; struct comm_base* base; } ;
struct comm_base {TYPE_1__* eb; } ;
typedef int comm_point_callback_type ;
struct TYPE_2__ {int base; } ;


 short UB_EV_PERSIST ;
 short UB_EV_READ ;
 scalar_t__ calloc (size_t,int) ;
 struct internal_event* comm_point_create_tcp_handler (struct comm_base*,struct internal_event*,size_t,struct sldns_buffer*,int *,void*) ;
 int comm_point_delete (struct internal_event*) ;
 int comm_point_tcp_accept_callback ;
 int comm_tcp_accept ;
 int free (struct internal_event*) ;
 int log_err (char*) ;
 scalar_t__ ub_event_add (struct internal_event*,int *) ;
 struct internal_event* ub_event_new (int ,int,short,int ,struct internal_event*) ;

struct comm_point*
comm_point_create_tcp(struct comm_base *base, int fd, int num,
 int idle_timeout, struct tcl_list* tcp_conn_limit, size_t bufsize,
 struct sldns_buffer* spoolbuf, comm_point_callback_type* callback,
 void* callback_arg)
{
 struct comm_point* c = (struct comm_point*)calloc(1,
  sizeof(struct comm_point));
 short evbits;
 int i;

 if(!c)
  return ((void*)0);
 c->ev = (struct internal_event*)calloc(1,
  sizeof(struct internal_event));
 if(!c->ev) {
  free(c);
  return ((void*)0);
 }
 c->ev->base = base;
 c->fd = fd;
 c->buffer = ((void*)0);
 c->timeout = ((void*)0);
 c->tcp_is_reading = 0;
 c->tcp_byte_count = 0;
 c->tcp_timeout_msec = idle_timeout;
 c->tcp_conn_limit = tcp_conn_limit;
 c->tcl_addr = ((void*)0);
 c->tcp_keepalive = 0;
 c->tcp_parent = ((void*)0);
 c->max_tcp_count = num;
 c->cur_tcp_count = 0;
 c->tcp_handlers = (struct comm_point**)calloc((size_t)num,
  sizeof(struct comm_point*));
 if(!c->tcp_handlers) {
  free(c->ev);
  free(c);
  return ((void*)0);
 }
 c->tcp_free = ((void*)0);
 c->type = comm_tcp_accept;
 c->tcp_do_close = 0;
 c->do_not_close = 0;
 c->tcp_do_toggle_rw = 0;
 c->tcp_check_nb_connect = 0;







 c->callback = ((void*)0);
 c->cb_arg = ((void*)0);
 evbits = UB_EV_READ | UB_EV_PERSIST;

 c->ev->ev = ub_event_new(base->eb->base, c->fd, evbits,
  comm_point_tcp_accept_callback, c);
 if(c->ev->ev == ((void*)0)) {
  log_err("could not baseset tcpacc event");
  comm_point_delete(c);
  return ((void*)0);
 }
 if (ub_event_add(c->ev->ev, c->timeout) != 0) {
  log_err("could not add tcpacc event");
  comm_point_delete(c);
  return ((void*)0);
 }

 for(i=0; i<num; i++) {
  c->tcp_handlers[i] = comm_point_create_tcp_handler(base,
   c, bufsize, spoolbuf, callback, callback_arg);
  if(!c->tcp_handlers[i]) {
   comm_point_delete(c);
   return ((void*)0);
  }
 }

 return c;
}
