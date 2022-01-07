
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eloop_signal_handler ;


 int SIGINT ;
 int SIGTERM ;
 int eloop_register_signal (int ,int ,void*) ;

int eloop_register_signal_terminate(eloop_signal_handler handler,
        void *user_data)
{
 int ret = eloop_register_signal(SIGINT, handler, user_data);
 if (ret == 0)
  ret = eloop_register_signal(SIGTERM, handler, user_data);
 return ret;
}
