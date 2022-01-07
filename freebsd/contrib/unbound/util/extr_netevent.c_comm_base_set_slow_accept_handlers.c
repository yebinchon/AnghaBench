
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_base {void (* stop_accept ) (void*) ;void (* start_accept ) (void*) ;void* cb_arg; } ;



void comm_base_set_slow_accept_handlers(struct comm_base* b,
 void (*stop_acc)(void*), void (*start_acc)(void*), void* arg)
{
 b->stop_accept = stop_acc;
 b->start_accept = start_acc;
 b->cb_arg = arg;
}
