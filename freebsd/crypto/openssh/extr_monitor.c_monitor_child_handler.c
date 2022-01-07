
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill (int ,int) ;
 int monitor_child_pid ;

__attribute__((used)) static void
monitor_child_handler(int sig)
{
 kill(monitor_child_pid, sig);
}
