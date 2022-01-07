
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_mday; int tm_mon; scalar_t__ tm_year; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ ntpcal_edate_to_eradays (scalar_t__,int ,scalar_t__) ;

int32_t
ntpcal_tm_to_rd(
 const struct tm *utm
 )
{
 return ntpcal_edate_to_eradays(utm->tm_year + 1899,
           utm->tm_mon,
           utm->tm_mday - 1) + 1;
}
