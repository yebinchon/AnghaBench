
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_point {int fd; scalar_t__ type; TYPE_1__* ev; int do_not_close; scalar_t__ tcp_req_info; int tcl_addr; } ;
struct TYPE_2__ {int ev; } ;


 int UB_EV_READ ;
 int UB_EV_WRITE ;
 int VERB_ALGO ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ comm_http ;
 scalar_t__ comm_tcp ;
 int log_err (char*) ;
 int tcl_close_connection (int ) ;
 int tcp_req_info_clear (scalar_t__) ;
 scalar_t__ ub_event_del (int ) ;
 int ub_winsock_tcp_wouldblock (int ,int ) ;
 int verbose (int ,char*,int) ;

void
comm_point_close(struct comm_point* c)
{
 if(!c)
  return;
 if(c->fd != -1) {
  if(ub_event_del(c->ev->ev) != 0) {
   log_err("could not event_del on close");
  }
 }
 tcl_close_connection(c->tcl_addr);
 if(c->tcp_req_info)
  tcp_req_info_clear(c->tcp_req_info);

 if(c->fd != -1 && !c->do_not_close) {
  if(c->type == comm_tcp || c->type == comm_http) {

   ub_winsock_tcp_wouldblock(c->ev->ev, UB_EV_READ);
   ub_winsock_tcp_wouldblock(c->ev->ev, UB_EV_WRITE);
  }
  verbose(VERB_ALGO, "close fd %d", c->fd);

  close(c->fd);



 }
 c->fd = -1;
}
