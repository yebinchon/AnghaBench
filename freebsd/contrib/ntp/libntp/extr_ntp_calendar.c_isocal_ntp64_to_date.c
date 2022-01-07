
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vint64 ;
typedef void* uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct isodate {void* week; scalar_t__ year; void* weekday; void* second; void* minute; void* hour; } ;
struct TYPE_4__ {int hi; int lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef scalar_t__ int32_t ;


 int DAYSPERWEEK ;
 int DAY_NTP_STARTS ;
 int int32_sflag (int) ;
 int int32_to_uint32_2cpl (int) ;
 TYPE_1__ isocal_split_eraweeks (int) ;
 TYPE_1__ ntpcal_daysplit (int const*) ;
 scalar_t__ priv_timesplit (scalar_t__*,int) ;
 int uint32_2cpl_to_int32 (int) ;

int
isocal_ntp64_to_date(
 struct isodate *id,
 const vint64 *ntp
 )
{
 ntpcal_split ds;
 int32_t ts[3];
 uint32_t uw, ud, sflag;





 ds = ntpcal_daysplit(ntp);


 ds.hi += priv_timesplit(ts, ds.lo);
 id->hour = (uint8_t)ts[0];
 id->minute = (uint8_t)ts[1];
 id->second = (uint8_t)ts[2];


 ds.hi += DAY_NTP_STARTS - 1;
 sflag = int32_sflag(ds.hi);
 ud = int32_to_uint32_2cpl(ds.hi);
 uw = sflag ^ ((sflag ^ ud) / DAYSPERWEEK);
 ud -= uw * DAYSPERWEEK;
 ds.hi = uint32_2cpl_to_int32(uw);
 ds.lo = ud;

 id->weekday = (uint8_t)ds.lo + 1;


 ds = isocal_split_eraweeks(ds.hi);
 id->year = (uint16_t)ds.hi + 1;
 id->week = (uint8_t )ds.lo + 1;

 return (ds.hi >= 0 && ds.hi < 0x0000FFFF);
}
