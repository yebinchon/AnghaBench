
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef int locale ;


 int DEBUGF (char*,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int LC_TIME ;
 int setlocale (int ,char*) ;
 int strlcpy (char*,int ,int) ;
 char* strptime (char const*,char*,struct tm*) ;
 int timegm (struct tm*) ;

__attribute__((used)) static int
http_parse_mtime(const char *p, time_t *mtime)
{
 char locale[64], *r;
 struct tm tm;

 strlcpy(locale, setlocale(LC_TIME, ((void*)0)), sizeof(locale));
 setlocale(LC_TIME, "C");
 r = strptime(p, "%a, %d %b %Y %H:%M:%S GMT", &tm);




 if (r == ((void*)0))
  r = strptime(p, "%a, %d %b %Y %H:%M:%S UTC", &tm);

 setlocale(LC_TIME, locale);
 if (r == ((void*)0))
  return (-1);
 DEBUGF("last modified: [%04d-%02d-%02d %02d:%02d:%02d]\n",
     tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
     tm.tm_hour, tm.tm_min, tm.tm_sec);
 *mtime = timegm(&tm);
 return (0);
}
