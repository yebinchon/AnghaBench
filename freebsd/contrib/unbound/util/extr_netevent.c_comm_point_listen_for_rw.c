
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_point {int timeout; TYPE_1__* ev; int fd; } ;
struct TYPE_2__ {int ev; } ;


 int UB_EV_READ ;
 int UB_EV_WRITE ;
 int VERB_ALGO ;
 int log_err (char*) ;
 scalar_t__ ub_event_add (int ,int ) ;
 int ub_event_add_bits (int ,int) ;
 scalar_t__ ub_event_del (int ) ;
 int ub_event_del_bits (int ,int) ;
 int verbose (int ,char*,int ,int) ;

void comm_point_listen_for_rw(struct comm_point* c, int rd, int wr)
{
 verbose(VERB_ALGO, "comm point listen_for_rw %d %d", c->fd, wr);
 if(ub_event_del(c->ev->ev) != 0) {
  log_err("event_del error to cplf");
 }
 ub_event_del_bits(c->ev->ev, UB_EV_READ|UB_EV_WRITE);
 if(rd) ub_event_add_bits(c->ev->ev, UB_EV_READ);
 if(wr) ub_event_add_bits(c->ev->ev, UB_EV_WRITE);
 if(ub_event_add(c->ev->ev, c->timeout) != 0) {
  log_err("event_add failed. in cplf.");
 }
}
