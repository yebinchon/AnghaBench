
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_yday; int tm_wday; scalar_t__ tm_year; } ;


 int first_day (scalar_t__) ;
 scalar_t__ tm_year_base ;

__attribute__((used)) static void
set_week_number_sun (struct tm *timeptr, int wnum)
{
    int fday = first_day (timeptr->tm_year + tm_year_base);

    timeptr->tm_yday = wnum * 7 + timeptr->tm_wday - fday;
    if (timeptr->tm_yday < 0) {
 timeptr->tm_wday = fday;
 timeptr->tm_yday = 0;
    }
}
