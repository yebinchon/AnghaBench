
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int tm ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef int buf ;


 int SSH_ERR_INVALID_FORMAT ;
 int memset (struct tm*,int ,int) ;
 scalar_t__ mktime (struct tm*) ;
 int snprintf (char*,int,char*,char const*,char const*,char const*,...) ;
 int strlen (char const*) ;
 int * strptime (char*,char*,struct tm*) ;

int
parse_absolute_time(const char *s, uint64_t *tp)
{
 struct tm tm;
 time_t tt;
 char buf[32], *fmt;

 *tp = 0;






 switch (strlen(s)) {
 case 8:
  fmt = "%Y-%m-%d";
  snprintf(buf, sizeof(buf), "%.4s-%.2s-%.2s", s, s + 4, s + 6);
  break;
 case 12:
  fmt = "%Y-%m-%dT%H:%M";
  snprintf(buf, sizeof(buf), "%.4s-%.2s-%.2sT%.2s:%.2s",
      s, s + 4, s + 6, s + 8, s + 10);
  break;
 case 14:
  fmt = "%Y-%m-%dT%H:%M:%S";
  snprintf(buf, sizeof(buf), "%.4s-%.2s-%.2sT%.2s:%.2s:%.2s",
      s, s + 4, s + 6, s + 8, s + 10, s + 12);
  break;
 default:
  return SSH_ERR_INVALID_FORMAT;
 }

 memset(&tm, 0, sizeof(tm));
 if (strptime(buf, fmt, &tm) == ((void*)0))
  return SSH_ERR_INVALID_FORMAT;
 if ((tt = mktime(&tm)) < 0)
  return SSH_ERR_INVALID_FORMAT;

 *tp = (uint64_t)tt;
 return 0;
}
