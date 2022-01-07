
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int eloop_signal_handler ;
struct TYPE_3__ {void* user_data; int handler; } ;
struct TYPE_4__ {TYPE_1__ term_signal; } ;
typedef int PHANDLER_ROUTINE ;


 scalar_t__ GetLastError () ;
 scalar_t__ SetConsoleCtrlHandler (int ,int ) ;
 int TRUE ;
 TYPE_2__ eloop ;
 scalar_t__ eloop_handle_console_ctrl ;
 int printf (char*,int) ;

int eloop_register_signal_terminate(eloop_signal_handler handler,
        void *user_data)
{

 if (SetConsoleCtrlHandler((PHANDLER_ROUTINE) eloop_handle_console_ctrl,
      TRUE) == 0) {
  printf("SetConsoleCtrlHandler() failed: %d\n",
         (int) GetLastError());
  return -1;
 }


 eloop.term_signal.handler = handler;
 eloop.term_signal.user_data = user_data;

 return 0;
}
