
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
struct isodate {int second; int minute; int hour; scalar_t__ weekday; scalar_t__ week; scalar_t__ year; } ;
typedef int int32_t ;


 int DAY_NTP_STARTS ;
 int isocal_weeks_in_years (int) ;
 int ntpcal_dayjoin (int,int) ;
 int ntpcal_etime_to_seconds (int ,int ,int ) ;

vint64
isocal_date_to_ntp64(
 const struct isodate *id
 )
{
 int32_t weeks, days, secs;

 weeks = isocal_weeks_in_years((int32_t)id->year - 1)
       + (int32_t)id->week - 1;
 days = weeks * 7 + (int32_t)id->weekday;

 secs = ntpcal_etime_to_seconds(id->hour, id->minute, id->second);

 return ntpcal_dayjoin(days - DAY_NTP_STARTS, secs);
}
