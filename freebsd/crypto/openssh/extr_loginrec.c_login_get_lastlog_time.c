
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct logininfo {unsigned int tv_sec; } ;


 scalar_t__ login_get_lastlog (struct logininfo*,int const) ;

unsigned int
login_get_lastlog_time(const uid_t uid)
{
 struct logininfo li;

 if (login_get_lastlog(&li, uid))
  return (li.tv_sec);
 else
  return (0);
}
