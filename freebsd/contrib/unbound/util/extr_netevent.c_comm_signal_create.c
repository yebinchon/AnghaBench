
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_signal {void (* callback ) (int,void*) ;int * ev_signal; void* cb_arg; struct comm_base* base; } ;
struct comm_base {int dummy; } ;


 int log_err (char*) ;
 scalar_t__ malloc (int) ;

struct comm_signal*
comm_signal_create(struct comm_base* base,
        void (*callback)(int, void*), void* cb_arg)
{
 struct comm_signal* com = (struct comm_signal*)malloc(
  sizeof(struct comm_signal));
 if(!com) {
  log_err("malloc failed");
  return ((void*)0);
 }
 com->base = base;
 com->callback = callback;
 com->cb_arg = cb_arg;
 com->ev_signal = ((void*)0);
 return com;
}
