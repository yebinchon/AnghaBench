
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tm {int tm_wday; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_yday; scalar_t__ tm_year; } ;
struct TYPE_4__ {scalar_t__ lo; scalar_t__ hi; } ;
typedef TYPE_1__ ntpcal_split ;
typedef int int32_t ;


 int DAYSPERWEEK ;
 TYPE_1__ ntpcal_split_eradays (int,int*) ;
 TYPE_1__ ntpcal_split_yeardays (scalar_t__,int) ;

int
ntpcal_rd_to_tm(
 struct tm *utm,
 int32_t rd
 )
{
 ntpcal_split split;
 int leapy;


 utm->tm_wday = rd % DAYSPERWEEK;
 if (utm->tm_wday < 0)
  utm->tm_wday += DAYSPERWEEK;


 split = ntpcal_split_eradays(rd - 1, &leapy);
 utm->tm_year = split.hi - 1899;
 utm->tm_yday = split.lo;


 split = ntpcal_split_yeardays(split.lo, leapy);
 utm->tm_mon = split.hi;
 utm->tm_mday = split.lo + 1;

 return leapy;
}
