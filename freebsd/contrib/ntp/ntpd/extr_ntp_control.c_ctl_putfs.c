
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tstamp_t ;
typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_min; int tm_hour; } ;
typedef int buffer ;


 int INSIST (int) ;
 scalar_t__ JAN_1970 ;
 int ctl_putunqstr (char const*,char*,int) ;
 struct tm* gmtime (scalar_t__*) ;
 int snprintf (char*,int,char*,int,int,int,int ,int ) ;

__attribute__((used)) static void
ctl_putfs(
 const char *tag,
 tstamp_t uval
 )
{
 char buffer[16];
 int rc;

 time_t fstamp = (time_t)uval - JAN_1970;
 struct tm *tm = gmtime(&fstamp);

 if (((void*)0) == tm)
  return;

 rc = snprintf(buffer, sizeof(buffer),
        "%04d%02d%02d%02d%02d",
        tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
        tm->tm_hour, tm->tm_min);
 INSIST(rc >= 0 && (size_t)rc < sizeof(buffer));
 ctl_putunqstr(tag, buffer, rc);
}
