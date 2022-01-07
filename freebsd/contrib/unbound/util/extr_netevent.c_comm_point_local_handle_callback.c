
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_point {scalar_t__ type; int cb_arg; int (* callback ) (struct comm_point*,int ,int ,int *) ;TYPE_1__* ev; } ;
struct TYPE_2__ {int base; } ;


 int NETEVENT_CLOSED ;
 short UB_EV_READ ;
 scalar_t__ comm_local ;
 int comm_point_tcp_handle_read (int,struct comm_point*,int) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (int (*) (struct comm_point*,int ,int ,int *)) ;
 int log_assert (int) ;
 int log_err (char*,short) ;
 int stub1 (struct comm_point*,int ,int ,int *) ;
 int ub_comm_base_now (int ) ;

void comm_point_local_handle_callback(int fd, short event, void* arg)
{
 struct comm_point* c = (struct comm_point*)arg;
 log_assert(c->type == comm_local);
 ub_comm_base_now(c->ev->base);

 if(event&UB_EV_READ) {
  if(!comm_point_tcp_handle_read(fd, c, 1)) {
   fptr_ok(fptr_whitelist_comm_point(c->callback));
   (void)(*c->callback)(c, c->cb_arg, NETEVENT_CLOSED,
    ((void*)0));
  }
  return;
 }
 log_err("Ignored event %d for localhdl.", event);
}
