
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
typedef int tm ;
typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; scalar_t__ tm_year; } ;


 scalar_t__ POSTFIX_LEN ;
 int TIMESTAMP_LEN ;
 void* atol (char*) ;
 int bzero (struct tm*,int) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 int timegm (struct tm*) ;

__attribute__((used)) static int
trailname_to_tstamp(char *fn, time_t *tstamp)
{
 struct tm tm;
 char ts[TIMESTAMP_LEN + 1];
 char *p;

 *tstamp = 0;




 if ((p = strchr(fn, '.')) == ((void*)0))
  return (1);
 strlcpy(ts, ++p, sizeof(ts));
 if (strlen(ts) != POSTFIX_LEN)
  return (1);

 bzero(&tm, sizeof(tm));


 p = ts + POSTFIX_LEN - 2;
 tm.tm_sec = atol(p);
 if (tm.tm_sec < 0 || tm.tm_sec > 60)
  return (1);


 *p = '\0'; p -= 2;
 tm.tm_min = atol(p);
 if (tm.tm_min < 0 || tm.tm_min > 59)
  return (1);


 *p = '\0'; p -= 2;
 tm.tm_hour = atol(p);
 if (tm.tm_hour < 0 || tm.tm_hour > 23)
  return (1);


 *p = '\0'; p -= 2;
 tm.tm_mday = atol(p);
 if (tm.tm_mday < 1 || tm.tm_mday > 31)
  return (1);


 *p = '\0'; p -= 2;
 tm.tm_mon = atol(p) - 1;
 if (tm.tm_mon < 0 || tm.tm_mon > 11)
  return (1);


 *p = '\0'; p -= 4;
 tm.tm_year = atol(p) - 1900;
 if (tm.tm_year < 0)
  return (1);

 *tstamp = timegm(&tm);

 return (0);
}
