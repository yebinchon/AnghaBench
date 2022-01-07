
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct tm {int tm_yday; int tm_hour; int tm_min; int tm_sec; int tm_year; } ;
struct TYPE_4__ {scalar_t__ l_ui; int l_uf; } ;
typedef TYPE_1__ l_fp ;


 scalar_t__ JAN_1970 ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 struct tm* gmtime (scalar_t__*) ;
 int snprintf (char*,int ,char*,char*,int,int,int,int,int,long) ;
 char* ulfptoa (TYPE_1__*,int) ;

char *
uglydate(
 l_fp *ts
 )
{
 char *bp;
 char *timep;
 struct tm *tm;
 time_t sec;
 long msec;
 int year;

 timep = ulfptoa(ts, 6);
 LIB_GETBUF(bp);
 sec = ts->l_ui - JAN_1970;
 msec = ts->l_uf / 4294967;
 tm = gmtime(&sec);
 if (ts->l_ui == 0) {



  year = 0;
  tm->tm_yday = 0;
  tm->tm_hour = 0;
  tm->tm_min = 0;
  tm->tm_sec = 0;
 } else {
  year = tm->tm_year;
  while (year >= 100)
      year -= 100;
 }
 snprintf(bp, LIB_BUFLENGTH,
   "%17s %02d:%03d:%02d:%02d:%02d.%03ld", timep, year,
   tm->tm_yday, tm->tm_hour, tm->tm_min, tm->tm_sec,
   msec);

 return bp;
}
