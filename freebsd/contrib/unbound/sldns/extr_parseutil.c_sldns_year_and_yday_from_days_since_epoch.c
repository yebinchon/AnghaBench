
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_yday; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ LDNS_DIV (scalar_t__,int) ;
 scalar_t__ is_leap_year (int) ;
 scalar_t__ leap_days (int,int) ;

__attribute__((used)) static void
sldns_year_and_yday_from_days_since_epoch(int64_t days, struct tm *result)
{
 int year = 1970;
 int new_year;

 while (days < 0 || days >= (int64_t) (is_leap_year(year) ? 366 : 365)) {
  new_year = year + (int) LDNS_DIV(days, 365);
  days -= (new_year - year) * 365;
  days -= leap_days(year, new_year);
  year = new_year;
 }
 result->tm_year = year;
 result->tm_yday = (int) days;
}
