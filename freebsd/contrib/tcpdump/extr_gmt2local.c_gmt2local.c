
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; int tm_year; int tm_yday; } ;
typedef int int32_t ;


 struct tm* gmtime (scalar_t__*) ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ time (int *) ;

int32_t
gmt2local(time_t t)
{
 register int dt, dir;
 register struct tm *gmt, *loc;
 struct tm sgmt;

 if (t == 0)
  t = time(((void*)0));
 gmt = &sgmt;
 *gmt = *gmtime(&t);
 loc = localtime(&t);
 dt = (loc->tm_hour - gmt->tm_hour) * 60 * 60 +
     (loc->tm_min - gmt->tm_min) * 60;






 dir = loc->tm_year - gmt->tm_year;
 if (dir == 0)
  dir = loc->tm_yday - gmt->tm_yday;
 dt += dir * 24 * 60 * 60;

 return (dt);
}
