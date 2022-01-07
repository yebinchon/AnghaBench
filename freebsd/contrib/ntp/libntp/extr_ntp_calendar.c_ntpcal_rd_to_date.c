
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint16_t ;
typedef int u_int ;
struct calendar {int weekday; void* monthday; void* month; void* yearday; void* year; } ;
struct TYPE_4__ {int hi; scalar_t__ lo; } ;
typedef TYPE_1__ ntpcal_split ;
typedef int int32_t ;


 int DAYSPERWEEK ;
 TYPE_1__ ntpcal_split_eradays (int,int*) ;
 TYPE_1__ ntpcal_split_yeardays (scalar_t__,int) ;

int
ntpcal_rd_to_date(
 struct calendar *jd,
 int32_t rd
 )
{
 ntpcal_split split;
 int leapy;
 u_int ymask;
 jd->weekday = rd % DAYSPERWEEK;
 if (jd->weekday >= DAYSPERWEEK)
  jd->weekday += DAYSPERWEEK;

 split = ntpcal_split_eradays(rd - 1, &leapy);






 split.hi += 1;
 ymask = 0u - ((split.hi >> 16) == 0);
 jd->year = (uint16_t)(split.hi & ymask);
 jd->yearday = (uint16_t)split.lo + 1;


 split = ntpcal_split_yeardays(split.lo, leapy);
 jd->month = (uint8_t)split.hi + 1;
 jd->monthday = (uint8_t)split.lo + 1;

 return ymask ? leapy : -1;
}
