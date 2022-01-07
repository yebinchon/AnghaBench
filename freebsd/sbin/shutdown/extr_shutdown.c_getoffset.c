
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 void* ATOI2 (char*) ;
 int LONG_MAX ;
 int badtime () ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int isascii (char) ;
 int isdigit (char) ;
 struct tm* localtime (int*) ;
 int mktime (struct tm*) ;
 int offset ;
 int shuttime ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlen (char*) ;
 int strtol (char*,char**,int) ;
 int time (int*) ;
 int unsetenv (char*) ;

__attribute__((used)) static void
getoffset(char *timearg)
{
 struct tm *lt;
 char *p;
 time_t now;
 int maybe_today, this_year;
 char *timeunit;

 (void)time(&now);

 if (!strcasecmp(timearg, "now")) {
  offset = 0;
  shuttime = now;
  return;
 }

 if (*timearg == '+') {
  if (!isdigit(*++timearg))
   badtime();
  errno = 0;
  offset = strtol(timearg, &timeunit, 10);
  if (offset < 0 || offset == LONG_MAX || errno != 0)
   badtime();
  if (timeunit[0] == '\0' || strcasecmp(timeunit, "m") == 0 ||
      strcasecmp(timeunit, "min") == 0 ||
      strcasecmp(timeunit, "mins") == 0) {
   offset *= 60;
  } else if (strcasecmp(timeunit, "h") == 0 ||
      strcasecmp(timeunit, "hour") == 0 ||
      strcasecmp(timeunit, "hours") == 0) {
   offset *= 60 * 60;
  } else if (strcasecmp(timeunit, "s") == 0 ||
      strcasecmp(timeunit, "sec") == 0 ||
      strcasecmp(timeunit, "secs") == 0) {
   offset *= 1;
  } else {
   badtime();
  }
  shuttime = now + offset;
  return;
 }


 for (p = timearg; *p; ++p)
  if (!isascii(*p) || !isdigit(*p)) {
   if (*p == ':' && strlen(p) == 3) {
    p[0] = p[1];
    p[1] = p[2];
    p[2] = '\0';
   }
   else
    badtime();
  }

 unsetenv("TZ");
 lt = localtime(&now);
 maybe_today = 1;

 switch(strlen(timearg)) {
 case 10:
  this_year = lt->tm_year;
  lt->tm_year = ATOI2(timearg);





  if (lt->tm_year < (this_year % 100) - 1)
   lt->tm_year += 100;

  lt->tm_year += (this_year - (this_year % 100));

 case 8:
  lt->tm_mon = ATOI2(timearg);
  if (--lt->tm_mon < 0 || lt->tm_mon > 11)
   badtime();

 case 6:
  maybe_today = 0;
  lt->tm_mday = ATOI2(timearg);
  if (lt->tm_mday < 1 || lt->tm_mday > 31)
   badtime();

 case 4:
  lt->tm_hour = ATOI2(timearg);
  if (lt->tm_hour < 0 || lt->tm_hour > 23)
   badtime();
  lt->tm_min = ATOI2(timearg);
  if (lt->tm_min < 0 || lt->tm_min > 59)
   badtime();
  lt->tm_sec = 0;
  if ((shuttime = mktime(lt)) == -1)
   badtime();

  if ((offset = shuttime - now) < 0) {
   if (!maybe_today)
    errx(1, "that time is already past.");






   lt->tm_mday++;
   if ((shuttime = mktime(lt)) == -1)
    badtime();
   if ((offset = shuttime - now) < 0) {
    errx(1, "tomorrow is before today?");
   }
  }
  break;
 default:
  badtime();
 }
}
