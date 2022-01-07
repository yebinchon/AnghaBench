
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int last_fd ;
 int ulog_logout_pseudo (int) ;

int
utempter_remove_record(int fd)
{

 ulog_logout_pseudo(fd);
 if (last_fd == fd)
  last_fd = -1;
 return (0);
}
