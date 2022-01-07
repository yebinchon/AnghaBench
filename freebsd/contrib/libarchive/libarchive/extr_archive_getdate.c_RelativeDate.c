
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_wday; } ;


 int DAY ;
 int DSTcorrect (int,int) ;
 int DSTmaybe ;
 struct tm* gmtime (int*) ;

__attribute__((used)) static time_t
RelativeDate(time_t Start, time_t zone, int dstmode,
    time_t DayOrdinal, time_t DayNumber)
{
 struct tm *tm;
 time_t t, now;

 t = Start - zone;
 tm = gmtime(&t);
 now = Start;
 now += DAY * ((DayNumber - tm->tm_wday + 7) % 7);
 now += 7 * DAY * (DayOrdinal <= 0 ? DayOrdinal : DayOrdinal - 1);
 if (dstmode == DSTmaybe)
  return DSTcorrect(Start, now);
 return now - Start;
}
