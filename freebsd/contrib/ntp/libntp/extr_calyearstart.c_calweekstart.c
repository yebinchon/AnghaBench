
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vint64 ;
typedef int u_int32 ;
typedef int time_t ;
struct TYPE_3__ {int hi; } ;
typedef TYPE_1__ ntpcal_split ;


 int CAL_MONDAY ;
 int DAY_NTP_STARTS ;
 int SECSPERDAY ;
 TYPE_1__ ntpcal_daysplit (int *) ;
 int ntpcal_ntp_to_ntp (int,int const*) ;
 int ntpcal_weekday_le (int,int ) ;

u_int32
calweekstart(u_int32 ntptime, const time_t *pivot)
{
 u_int32 ndays;
 vint64 vlong;
 ntpcal_split split;

 vlong = ntpcal_ntp_to_ntp(ntptime, pivot);
 split = ntpcal_daysplit(&vlong);
 ndays = ntpcal_weekday_le(split.hi + DAY_NTP_STARTS, CAL_MONDAY)
       - DAY_NTP_STARTS;

 return (u_int32)(ndays * SECSPERDAY);
}
