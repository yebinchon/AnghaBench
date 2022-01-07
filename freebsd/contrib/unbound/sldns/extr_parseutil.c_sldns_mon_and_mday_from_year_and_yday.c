
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_yday; size_t tm_mon; int tm_mday; int tm_year; } ;


 scalar_t__ is_leap_year (int ) ;
 int* leap_year_mdays ;
 int* mdays ;

__attribute__((used)) static void
sldns_mon_and_mday_from_year_and_yday(struct tm *result)
{
 int idays = result->tm_yday;
 const int *mon_lengths = is_leap_year(result->tm_year) ?
     leap_year_mdays : mdays;

 result->tm_mon = 0;
 while (idays >= mon_lengths[result->tm_mon]) {
  idays -= mon_lengths[result->tm_mon++];
 }
 result->tm_mday = idays + 1;
}
