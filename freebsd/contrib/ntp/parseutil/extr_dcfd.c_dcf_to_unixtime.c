
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {scalar_t__ year; int month; int day; scalar_t__ hour; scalar_t__ minute; int utcoffset; scalar_t__ second; } ;
typedef TYPE_1__ clocktime_t ;


 int CVT_BADDATE ;
 int CVT_BADTIME ;
 int CVT_FAIL ;
 int SETRTC (int) ;
 int TIMES24 (int) ;
 int TIMES60 (int) ;
 scalar_t__ YEAR_BREAK ;
 scalar_t__ YEAR_PIVOT ;
 int days_per_year (int) ;
 int julian0 (int) ;

__attribute__((used)) static time_t
dcf_to_unixtime(
  clocktime_t *clock_time,
  unsigned *cvtrtc
  )
{

 static int days_of_month[] =
 {
  0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
 };
 register int i;
 time_t t;




 if ( clock_time->year < YEAR_PIVOT )
  clock_time->year += 100;

 if ( clock_time->year < YEAR_BREAK )
     clock_time->year += 1900;




 if (clock_time->year < (YEAR_PIVOT + 1900) )
 {
  { if (cvtrtc) *cvtrtc = (CVT_FAIL|CVT_BADDATE); };
  return -1;
 }







 t = julian0( clock_time->year ) - julian0( 1970 );


 if (clock_time->month <= 0 || clock_time->month > 12)
 {
  { if (cvtrtc) *cvtrtc = (CVT_FAIL|CVT_BADDATE); };
  return -1;
 }
 for (i = 1; i < clock_time->month; i++)
 {
  t += days_of_month[i];
 }

 if (clock_time->day < 1 || ((clock_time->month == 2 && days_per_year(clock_time->year) == 366) ?
          clock_time->day > 29 : clock_time->day > days_of_month[clock_time->month]))
 {
  { if (cvtrtc) *cvtrtc = (CVT_FAIL|CVT_BADDATE); };
  return -1;
 }




 t += clock_time->day - 1;


 if (clock_time->hour < 0 || clock_time->hour >= 24)
 {
  { if (cvtrtc) *cvtrtc = (CVT_FAIL|CVT_BADTIME); };
  return -1;
 }




 t = TIMES24(t) + clock_time->hour;


 if (clock_time->minute < 0 || clock_time->minute > 59)
 {
  { if (cvtrtc) *cvtrtc = (CVT_FAIL|CVT_BADTIME); };
  return -1;
 }




 t = TIMES60(t) + clock_time->minute;





 t += clock_time->utcoffset;

 if (clock_time->second < 0 || clock_time->second > 60)
 {
  { if (cvtrtc) *cvtrtc = (CVT_FAIL|CVT_BADTIME); };
  return -1;
 }




 t = TIMES60(t) + clock_time->second;

 return t;
}
