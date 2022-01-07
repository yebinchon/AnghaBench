
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ request_tty; int * control_path; } ;


 scalar_t__ REQUEST_TTY_FORCE ;
 int _exit (int) ;
 int leave_non_blocking () ;
 int leave_raw_mode (int) ;
 int muxserver_sock ;
 TYPE_1__ options ;
 int ssh_kill_proxy_command () ;
 int unlink (int *) ;

void
cleanup_exit(int i)
{
 leave_raw_mode(options.request_tty == REQUEST_TTY_FORCE);
 leave_non_blocking();
 if (options.control_path != ((void*)0) && muxserver_sock != -1)
  unlink(options.control_path);
 ssh_kill_proxy_command();
 _exit(i);
}
