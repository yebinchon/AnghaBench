
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int DAYSPERYEAR ;
 int ntpcal_leapyears_in_years (int) ;

int32_t
ntpcal_days_in_years(
 int32_t years
 )
{
 return years * DAYSPERYEAR + ntpcal_leapyears_in_years(years);
}
