
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 int kill (int,int ) ;
 int proxy_command_pid ;

void
ssh_kill_proxy_command(void)
{




 if (proxy_command_pid > 1)
  kill(proxy_command_pid, SIGHUP);
}
