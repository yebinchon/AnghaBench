
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calendar {int monthday; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ DAY_NTP_STARTS ;
 scalar_t__ NTP_TO_UNIX_DAYS ;
 scalar_t__ ntpcal_date_to_rd (struct calendar*) ;
 int ntpcal_get_build_date (struct calendar*) ;

int32_t
basedate_eval_buildstamp(void)
{
 struct calendar jd;
 int32_t ed;

 if (!ntpcal_get_build_date(&jd))
  return NTP_TO_UNIX_DAYS;
 jd.monthday -= 1;
 ed = ntpcal_date_to_rd(&jd) - DAY_NTP_STARTS;
 return (ed < NTP_TO_UNIX_DAYS) ? NTP_TO_UNIX_DAYS : ed;
}
