
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef scalar_t__ time_t ;
struct tm {unsigned char tm_year; unsigned char tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;


 int memset (struct tm*,int ,int) ;
 scalar_t__ time_from_tm (struct tm*) ;

__attribute__((used)) static time_t
isodate7(const unsigned char *v)
{
 struct tm tm;
 int offset;
 time_t t;

 memset(&tm, 0, sizeof(tm));
 tm.tm_year = v[0];
 tm.tm_mon = v[1] - 1;
 tm.tm_mday = v[2];
 tm.tm_hour = v[3];
 tm.tm_min = v[4];
 tm.tm_sec = v[5];

 offset = ((const signed char *)v)[6];
 if (offset > -48 && offset < 52) {
  tm.tm_hour -= offset / 4;
  tm.tm_min -= (offset % 4) * 15;
 }
 t = time_from_tm(&tm);
 if (t == (time_t)-1)
  return ((time_t)0);
 return (t);
}
