
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vint64 ;
struct calendar {int dummy; } ;


 scalar_t__ DAY_NTP_STARTS ;
 int ntpcal_date_to_daysec (struct calendar const*) ;
 scalar_t__ ntpcal_date_to_rd (struct calendar const*) ;
 int ntpcal_dayjoin (scalar_t__,int ) ;

vint64
ntpcal_date_to_ntp64(
 const struct calendar *jd
 )
{



 return ntpcal_dayjoin(ntpcal_date_to_rd(jd) - DAY_NTP_STARTS,
         ntpcal_date_to_daysec(jd));
}
