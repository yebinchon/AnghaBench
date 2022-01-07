
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ulog_exec_helper (int,char const* const*) ;

void
ulog_logout_pseudo(int fd)
{
 char const * const args[3] = { "ulog-helper", "logout", ((void*)0) };

 ulog_exec_helper(fd, args);
}
