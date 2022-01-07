
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lo; } ;
struct TYPE_5__ {TYPE_1__ d_s; } ;
typedef TYPE_2__ vint64 ;
typedef int uint32_t ;
struct calendar {int month; int monthday; int yearday; int hour; scalar_t__ minute; scalar_t__ second; int year; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ DAY_NTP_STARTS ;
 scalar_t__ MINSPERHR ;
 int REQUIRE (int) ;
 scalar_t__ SECSPERMIN ;
 scalar_t__ ntpcal_date_to_rd (struct calendar const*) ;
 TYPE_2__ ntpcal_dayjoin (scalar_t__,int ) ;
 int ntpcal_etime_to_seconds (int,scalar_t__,scalar_t__) ;
 scalar_t__ ntpcal_year_to_ystart (int ) ;

uint32_t
caltontp(
 const struct calendar *jt
 )
{
 int32_t eraday;
 vint64 ntptime;

 REQUIRE(jt != ((void*)0));

 REQUIRE(jt->month <= 13);
 REQUIRE(jt->monthday <= 32);
 REQUIRE(jt->yearday <= 366);
 REQUIRE(jt->hour <= 24);
 REQUIRE(jt->minute <= MINSPERHR);
 REQUIRE(jt->second <= SECSPERMIN);







 if (jt->yearday)
  eraday = ntpcal_year_to_ystart(jt->year)
         + jt->yearday - 1;
 else
  eraday = ntpcal_date_to_rd(jt);

 ntptime = ntpcal_dayjoin(eraday - DAY_NTP_STARTS,
     ntpcal_etime_to_seconds(jt->hour, jt->minute,
        jt->second));
 return ntptime.d_s.lo;
}
