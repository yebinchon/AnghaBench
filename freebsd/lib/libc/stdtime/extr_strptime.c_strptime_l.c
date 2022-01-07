
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 char* _strptime (char const*,char const*,struct tm*,int*,int ) ;
 int localtime_r (int *,struct tm*) ;
 int timegm (struct tm*) ;

char *
strptime_l(const char * __restrict buf, const char * __restrict fmt,
    struct tm * __restrict tm, locale_t loc)
{
 char *ret;
 int gmt;
 FIX_LOCALE(loc);

 gmt = 0;
 ret = _strptime(buf, fmt, tm, &gmt, loc);
 if (ret && gmt) {
  time_t t = timegm(tm);

  localtime_r(&t, tm);
 }

 return (ret);
}
