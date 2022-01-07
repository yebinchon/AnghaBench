
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 scalar_t__ NTP_TO_UNIX_DAYS ;
 int SECSPERDAY ;
 scalar_t__ s_baseday ;

time_t
basedate_get_erabase(void)
{
 time_t retv;
 retv = (time_t)(s_baseday - NTP_TO_UNIX_DAYS);
 retv *= SECSPERDAY;
 return retv;
}
