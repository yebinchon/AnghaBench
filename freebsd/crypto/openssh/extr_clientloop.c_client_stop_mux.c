
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ control_persist; int * control_path; } ;


 int muxserver_sock ;
 scalar_t__ no_shell_flag ;
 TYPE_1__ options ;
 int session_closed ;
 int setproctitle (char*) ;
 int unlink (int *) ;

void
client_stop_mux(void)
{
 if (options.control_path != ((void*)0) && muxserver_sock != -1)
  unlink(options.control_path);




 if (options.control_persist || no_shell_flag) {
  session_closed = 1;
  setproctitle("[stopped mux]");
 }
}
