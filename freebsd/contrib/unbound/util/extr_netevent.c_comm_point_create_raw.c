
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_event {int fd; int do_not_close; struct internal_event* ev; int * timeout; void* cb_arg; int * callback; int * buffer; int * dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ tcp_do_toggle_rw; scalar_t__ tcp_do_close; int type; int * tcp_free; int * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; struct comm_base* base; } ;
struct comm_point {int fd; int do_not_close; struct comm_point* ev; int * timeout; void* cb_arg; int * callback; int * buffer; int * dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ tcp_do_toggle_rw; scalar_t__ tcp_do_close; int type; int * tcp_free; int * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; struct comm_base* base; } ;
struct comm_base {TYPE_1__* eb; } ;
typedef int comm_point_callback_type ;
struct TYPE_2__ {int base; } ;


 short UB_EV_PERSIST ;
 short UB_EV_READ ;
 short UB_EV_WRITE ;
 scalar_t__ calloc (int,int) ;
 int comm_point_raw_handle_callback ;
 int comm_raw ;
 int free (struct internal_event*) ;
 int log_err (char*) ;
 scalar_t__ ub_event_add (struct internal_event*,int *) ;
 int ub_event_free (struct internal_event*) ;
 struct internal_event* ub_event_new (int ,int,short,int ,struct internal_event*) ;

struct comm_point*
comm_point_create_raw(struct comm_base* base, int fd, int writing,
 comm_point_callback_type* callback, void* callback_arg)
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
 c->fd = fd;
 c->buffer = ((void*)0);
 c->timeout = ((void*)0);
 c->tcp_is_reading = 0;
 c->tcp_byte_count = 0;
 c->tcp_parent = ((void*)0);
 c->max_tcp_count = 0;
 c->cur_tcp_count = 0;
 c->tcp_handlers = ((void*)0);
 c->tcp_free = ((void*)0);
 c->type = comm_raw;
 c->tcp_do_close = 0;
 c->do_not_close = 1;
 c->tcp_do_toggle_rw = 0;
 c->tcp_check_nb_connect = 0;







 c->callback = callback;
 c->cb_arg = callback_arg;

 if(writing)
  evbits = UB_EV_PERSIST | UB_EV_WRITE;
 else evbits = UB_EV_PERSIST | UB_EV_READ;
 c->ev->ev = ub_event_new(base->eb->base, c->fd, evbits,
  comm_point_raw_handle_callback, c);
 if(c->ev->ev == ((void*)0)) {
  log_err("could not baseset rawhdl event");
  free(c->ev);
  free(c);
  return ((void*)0);
 }
 if (ub_event_add(c->ev->ev, c->timeout) != 0) {
  log_err("could not add rawhdl event");
  ub_event_free(c->ev->ev);
  free(c->ev);
  free(c);
  return ((void*)0);
 }
 return c;
}
