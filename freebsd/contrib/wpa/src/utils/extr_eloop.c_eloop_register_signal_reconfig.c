
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eloop_signal_handler ;


 int SIGHUP ;
 int eloop_register_signal (int ,int ,void*) ;

int eloop_register_signal_reconfig(eloop_signal_handler handler,
       void *user_data)
{



 return eloop_register_signal(SIGHUP, handler, user_data);

}
