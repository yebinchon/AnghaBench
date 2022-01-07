
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int last_fd ;
 int ulog_login_pseudo (int,char const*) ;

int
utempter_add_record(int fd, const char *host)
{

 ulog_login_pseudo(fd, host);
 last_fd = fd;
 return (0);
}
