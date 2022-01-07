
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_point {TYPE_1__* ev; int fd; } ;
struct TYPE_2__ {int ev; } ;


 int VERB_ALGO ;
 int log_err (char*) ;
 scalar_t__ ub_event_del (int ) ;
 int verbose (int ,char*,int ) ;

void
comm_point_stop_listening(struct comm_point* c)
{
 verbose(VERB_ALGO, "comm point stop listening %d", c->fd);
 if(ub_event_del(c->ev->ev) != 0) {
  log_err("event_del error to stoplisten");
 }
}
