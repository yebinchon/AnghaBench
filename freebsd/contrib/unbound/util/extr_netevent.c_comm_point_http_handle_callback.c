
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_point {scalar_t__ type; int cb_arg; int (* callback ) (struct comm_point*,int ,int ,int *) ;int tcp_do_close; TYPE_1__* ev; } ;
struct TYPE_2__ {int base; } ;


 int NETEVENT_CLOSED ;
 int NETEVENT_TIMEOUT ;
 short UB_EV_READ ;
 short UB_EV_TIMEOUT ;
 short UB_EV_WRITE ;
 int VERB_QUERY ;
 scalar_t__ comm_http ;
 int comm_point_http_handle_read (int,struct comm_point*) ;
 int comm_point_http_handle_write (int,struct comm_point*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (int (*) (struct comm_point*,int ,int ,int *)) ;
 int log_assert (int) ;
 int log_err (char*,short) ;
 int reclaim_http_handler (struct comm_point*) ;
 int stub1 (struct comm_point*,int ,int ,int *) ;
 int stub2 (struct comm_point*,int ,int ,int *) ;
 int stub3 (struct comm_point*,int ,int ,int *) ;
 int ub_comm_base_now (int ) ;
 int verbose (int ,char*) ;

void
comm_point_http_handle_callback(int fd, short event, void* arg)
{
 struct comm_point* c = (struct comm_point*)arg;
 log_assert(c->type == comm_http);
 ub_comm_base_now(c->ev->base);

 if(event&UB_EV_TIMEOUT) {
  verbose(VERB_QUERY, "http took too long, dropped");
  reclaim_http_handler(c);
  if(!c->tcp_do_close) {
   fptr_ok(fptr_whitelist_comm_point(c->callback));
   (void)(*c->callback)(c, c->cb_arg,
    NETEVENT_TIMEOUT, ((void*)0));
  }
  return;
 }
 if(event&UB_EV_READ) {
  if(!comm_point_http_handle_read(fd, c)) {
   reclaim_http_handler(c);
   if(!c->tcp_do_close) {
    fptr_ok(fptr_whitelist_comm_point(
     c->callback));
    (void)(*c->callback)(c, c->cb_arg,
     NETEVENT_CLOSED, ((void*)0));
   }
  }
  return;
 }
 if(event&UB_EV_WRITE) {
  if(!comm_point_http_handle_write(fd, c)) {
   reclaim_http_handler(c);
   if(!c->tcp_do_close) {
    fptr_ok(fptr_whitelist_comm_point(
     c->callback));
    (void)(*c->callback)(c, c->cb_arg,
     NETEVENT_CLOSED, ((void*)0));
   }
  }
  return;
 }
 log_err("Ignored event %d for httphdl.", event);
}
