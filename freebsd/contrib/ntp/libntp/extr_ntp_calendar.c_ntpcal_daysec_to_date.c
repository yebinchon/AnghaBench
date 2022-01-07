
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct calendar {void* second; void* minute; void* hour; } ;
typedef int int32_t ;


 int priv_timesplit (int*,int ) ;

int32_t
ntpcal_daysec_to_date(
 struct calendar *jd,
 int32_t sec
 )
{
 int32_t days;
 int ts[3];

 days = priv_timesplit(ts, sec);
 jd->hour = (uint8_t)ts[0];
 jd->minute = (uint8_t)ts[1];
 jd->second = (uint8_t)ts[2];

 return days;
}
