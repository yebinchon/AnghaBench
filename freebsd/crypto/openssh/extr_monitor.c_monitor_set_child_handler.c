
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int monitor_child_pid ;

__attribute__((used)) static void
monitor_set_child_handler(pid_t pid)
{
 monitor_child_pid = pid;
}
