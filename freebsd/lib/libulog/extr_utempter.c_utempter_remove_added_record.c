
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int last_fd ;
 int ulog_logout_pseudo (int) ;

int
utempter_remove_added_record(void)
{

 if (last_fd < 0)
  return (0);
 ulog_logout_pseudo(last_fd);
 last_fd = -1;
 return (0);
}
