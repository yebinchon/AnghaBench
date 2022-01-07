
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eloop_signal {int sig; scalar_t__ signaled; int handler; void* user_data; } ;
typedef int eloop_signal_handler ;
struct TYPE_2__ {int signal_count; struct eloop_signal* signals; } ;


 TYPE_1__ eloop ;
 struct eloop_signal* os_realloc_array (struct eloop_signal*,int,int) ;

int eloop_register_signal(int sig, eloop_signal_handler handler,
     void *user_data)
{
 struct eloop_signal *tmp;

 tmp = os_realloc_array(eloop.signals, eloop.signal_count + 1,
          sizeof(struct eloop_signal));
 if (tmp == ((void*)0))
  return -1;

 tmp[eloop.signal_count].sig = sig;
 tmp[eloop.signal_count].user_data = user_data;
 tmp[eloop.signal_count].handler = handler;
 tmp[eloop.signal_count].signaled = 0;
 eloop.signal_count++;
 eloop.signals = tmp;



 return 0;
}
