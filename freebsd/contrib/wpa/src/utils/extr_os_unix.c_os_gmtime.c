
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {scalar_t__ tm_year; scalar_t__ tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct os_tm {scalar_t__ year; scalar_t__ month; int day; int hour; int min; int sec; } ;
typedef int os_time_t ;


 struct tm* gmtime (int *) ;

int os_gmtime(os_time_t t, struct os_tm *tm)
{
 struct tm *tm2;
 time_t t2 = t;

 tm2 = gmtime(&t2);
 if (tm2 == ((void*)0))
  return -1;
 tm->sec = tm2->tm_sec;
 tm->min = tm2->tm_min;
 tm->hour = tm2->tm_hour;
 tm->day = tm2->tm_mday;
 tm->month = tm2->tm_mon + 1;
 tm->year = tm2->tm_year + 1900;
 return 0;
}
