
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ ntpcal_days_in_years (scalar_t__) ;

int32_t
ntpcal_year_to_ystart(
 int32_t year
 )
{
 return ntpcal_days_in_years(year - 1) + 1;
}
