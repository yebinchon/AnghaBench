
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int buf ;


 char* getenv (char*) ;
 int mktime (struct tm*) ;
 int putenv (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int tzset () ;

time_t
timegm (struct tm *tm) {
 time_t ret;
 char *tz;

 tz = getenv("TZ");
 putenv((char*)"TZ=");
 tzset();
 ret = mktime(tm);
 if (tz) {
  char buf[256];
  snprintf(buf, sizeof(buf), "TZ=%s", tz);
  putenv(tz);
 }
 else
  putenv((char*)"TZ");
 tzset();
 return ret;
}
