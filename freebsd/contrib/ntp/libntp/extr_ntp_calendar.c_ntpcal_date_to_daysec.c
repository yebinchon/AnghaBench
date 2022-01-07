
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calendar {int second; int minute; int hour; } ;
typedef int int32_t ;


 int ntpcal_etime_to_seconds (int ,int ,int ) ;

int32_t
ntpcal_date_to_daysec(
 const struct calendar *jd
 )
{
 return ntpcal_etime_to_seconds(jd->hour, jd->minute,
           jd->second);
}
