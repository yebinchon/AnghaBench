
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int intmax_t ;


 int DEBUG_PRINTF (int,char*) ;
 scalar_t__ ve_utc ;

void
ve_utc_set(time_t utc)
{
 if (utc > ve_utc) {
  DEBUG_PRINTF(2, ("Set ve_utc=%jd\n", (intmax_t)utc));
  ve_utc = utc;
 }
}
