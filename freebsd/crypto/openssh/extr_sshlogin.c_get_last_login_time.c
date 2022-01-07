
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int time_t ;
struct logininfo {int tv_sec; int hostname; } ;


 int login_get_lastlog (struct logininfo*,int ) ;
 int strlcpy (char*,int ,size_t) ;

time_t
get_last_login_time(uid_t uid, const char *logname,
    char *buf, size_t bufsize)
{
 struct logininfo li;

 login_get_lastlog(&li, uid);
 strlcpy(buf, li.hostname, bufsize);
 return (time_t)li.tv_sec;
}
