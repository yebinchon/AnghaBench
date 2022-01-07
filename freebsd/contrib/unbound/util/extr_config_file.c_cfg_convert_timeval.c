
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 int memset (struct tm*,int ,int) ;
 int sldns_mktime_from_utc (struct tm*) ;
 int sscanf (char const*,char*,int*,int*,int*,int*,int*,int*) ;
 int strlen (char const*) ;

time_t
cfg_convert_timeval(const char* str)
{
 time_t t;
 struct tm tm;
 memset(&tm, 0, sizeof(tm));
 if(strlen(str) < 14)
  return 0;
 if(sscanf(str, "%4d%2d%2d%2d%2d%2d", &tm.tm_year, &tm.tm_mon,
  &tm.tm_mday, &tm.tm_hour, &tm.tm_min, &tm.tm_sec) != 6)
  return 0;
 tm.tm_year -= 1900;
 tm.tm_mon--;

 if (tm.tm_year < 70) return 0;
 if (tm.tm_mon < 0 || tm.tm_mon > 11) return 0;
 if (tm.tm_mday < 1 || tm.tm_mday > 31) return 0;
 if (tm.tm_hour < 0 || tm.tm_hour > 23) return 0;
 if (tm.tm_min < 0 || tm.tm_min > 59) return 0;
 if (tm.tm_sec < 0 || tm.tm_sec > 59) return 0;

 t = sldns_mktime_from_utc(&tm);
 return t;
}
