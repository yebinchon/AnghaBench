
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ulog_exec_helper (int,char const* const*) ;

void
ulog_login_pseudo(int fd, const char *host)
{
 char const * const args[4] = { "ulog-helper", "login", host, ((void*)0) };

 ulog_exec_helper(fd, args);
}
