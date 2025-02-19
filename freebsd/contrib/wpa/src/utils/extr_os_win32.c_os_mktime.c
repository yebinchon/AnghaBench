
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef scalar_t__ os_time_t ;


 struct tm* gmtime (scalar_t__*) ;
 struct tm* localtime (scalar_t__*) ;
 int memset (struct tm*,int ,int) ;
 scalar_t__ mktime (struct tm*) ;

int os_mktime(int year, int month, int day, int hour, int min, int sec,
       os_time_t *t)
{
 struct tm tm, *tm1;
 time_t t_local, t1, t2;
 os_time_t tz_offset;

 if (year < 1970 || month < 1 || month > 12 || day < 1 || day > 31 ||
     hour < 0 || hour > 23 || min < 0 || min > 59 || sec < 0 ||
     sec > 60)
  return -1;

 memset(&tm, 0, sizeof(tm));
 tm.tm_year = year - 1900;
 tm.tm_mon = month - 1;
 tm.tm_mday = day;
 tm.tm_hour = hour;
 tm.tm_min = min;
 tm.tm_sec = sec;

 t_local = mktime(&tm);


 tm1 = localtime(&t_local);
 if (tm1) {
  t1 = mktime(tm1);
  tm1 = gmtime(&t_local);
  if (tm1) {
   t2 = mktime(tm1);
   tz_offset = t2 - t1;
  } else
   tz_offset = 0;
 } else
  tz_offset = 0;

 *t = (os_time_t) t_local - tz_offset;
 return 0;
}
