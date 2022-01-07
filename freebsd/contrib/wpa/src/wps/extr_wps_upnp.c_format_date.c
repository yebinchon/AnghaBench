
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct wpabuf {int dummy; } ;
struct tm {int tm_wday; int tm_mon; int tm_sec; int tm_min; int tm_hour; scalar_t__ tm_year; int tm_mday; } ;


 struct tm* gmtime (int *) ;
 int time (int *) ;
 int wpabuf_printf (struct wpabuf*,char*,char const*,int ,char const*,scalar_t__,int ,int ,int ) ;

void format_date(struct wpabuf *buf)
{
 const char *weekday_str = "Sun\0Mon\0Tue\0Wed\0Thu\0Fri\0Sat";
 const char *month_str = "Jan\0Feb\0Mar\0Apr\0May\0Jun\0"
  "Jul\0Aug\0Sep\0Oct\0Nov\0Dec";
 struct tm *date;
 time_t t;

 t = time(((void*)0));
 date = gmtime(&t);
 if (date == ((void*)0))
  return;
 wpabuf_printf(buf, "%s, %02d %s %d %02d:%02d:%02d GMT",
        &weekday_str[date->tm_wday * 4], date->tm_mday,
        &month_str[date->tm_mon * 4], date->tm_year + 1900,
        date->tm_hour, date->tm_min, date->tm_sec);
}
