
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unlink (char const*) ;

void os_daemonize_terminate(const char *pid_file)
{
 if (pid_file)
  unlink(pid_file);
}
