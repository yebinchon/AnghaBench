
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int addto_syslog (int,char*) ;
 int mvsnprintf (char*,int,char const*,int ) ;

void
mvsyslog(
 int level,
 const char * fmt,
 va_list ap
 )
{
 char buf[1024];
 mvsnprintf(buf, sizeof(buf), fmt, ap);
 addto_syslog(level, buf);
}
