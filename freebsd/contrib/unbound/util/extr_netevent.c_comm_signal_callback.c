
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_signal {int cb_arg; int (* callback ) (int,int ) ;int base; } ;


 short UB_EV_SIGNAL ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_signal (int (*) (int,int )) ;
 int stub1 (int,int ) ;
 int ub_comm_base_now (int ) ;

void
comm_signal_callback(int sig, short event, void* arg)
{
 struct comm_signal* comsig = (struct comm_signal*)arg;
 if(!(event & UB_EV_SIGNAL))
  return;
 ub_comm_base_now(comsig->base);
 fptr_ok(fptr_whitelist_comm_signal(comsig->callback));
 (*comsig->callback)(sig, comsig->cb_arg);
}
