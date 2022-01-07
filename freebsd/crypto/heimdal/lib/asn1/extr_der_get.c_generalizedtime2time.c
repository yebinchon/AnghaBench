
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_sec; int tm_min; int tm_hour; int tm_mday; } ;


 int ASN1_BAD_TIMEFORMAT ;
 int _der_timegm (struct tm*) ;
 int memset (struct tm*,int ,int) ;
 int sscanf (char const*,char*,int*,int*,int *,int *,int *,int *) ;

__attribute__((used)) static int
generalizedtime2time (const char *s, time_t *t)
{
    struct tm tm;

    memset(&tm, 0, sizeof(tm));
    if (sscanf (s, "%04d%02d%02d%02d%02d%02dZ",
  &tm.tm_year, &tm.tm_mon, &tm.tm_mday, &tm.tm_hour,
  &tm.tm_min, &tm.tm_sec) != 6) {
 if (sscanf (s, "%02d%02d%02d%02d%02d%02dZ",
      &tm.tm_year, &tm.tm_mon, &tm.tm_mday, &tm.tm_hour,
      &tm.tm_min, &tm.tm_sec) != 6)
     return ASN1_BAD_TIMEFORMAT;
 if (tm.tm_year < 50)
     tm.tm_year += 2000;
 else
     tm.tm_year += 1900;
    }
    tm.tm_year -= 1900;
    tm.tm_mon -= 1;
    *t = _der_timegm (&tm);
    return 0;
}
