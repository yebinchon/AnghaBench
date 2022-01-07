
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_year; scalar_t__ tm_mon; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; } ;


 int Convert (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ DSTcorrect (scalar_t__,int ) ;
 int DSTmaybe ;
 struct tm* localtime (scalar_t__*) ;

__attribute__((used)) static time_t
RelativeMonth(time_t Start, time_t Timezone, time_t RelMonth)
{
 struct tm *tm;
 time_t Month;
 time_t Year;

 if (RelMonth == 0)
  return 0;
 tm = localtime(&Start);
 Month = 12 * (tm->tm_year + 1900) + tm->tm_mon + RelMonth;
 Year = Month / 12;
 Month = Month % 12 + 1;
 return DSTcorrect(Start,
     Convert(Month, (time_t)tm->tm_mday, Year,
  (time_t)tm->tm_hour, (time_t)tm->tm_min, (time_t)tm->tm_sec,
  Timezone, DSTmaybe));
}
