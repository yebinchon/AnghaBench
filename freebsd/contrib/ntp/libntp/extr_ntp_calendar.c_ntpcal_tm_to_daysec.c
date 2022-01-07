
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_sec; int tm_min; int tm_hour; } ;
typedef int int32_t ;


 int ntpcal_etime_to_seconds (int ,int ,int ) ;

int32_t
ntpcal_tm_to_daysec(
 const struct tm *utm
 )
{
 return ntpcal_etime_to_seconds(utm->tm_hour, utm->tm_min,
           utm->tm_sec);
}
