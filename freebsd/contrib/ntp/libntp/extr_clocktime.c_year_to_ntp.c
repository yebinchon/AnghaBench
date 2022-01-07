
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef scalar_t__ int32 ;


 int DAY_NTP_STARTS ;
 int SECSPERDAY ;
 int ntpcal_days_in_years (scalar_t__) ;

__attribute__((used)) static u_int32
year_to_ntp(
 int32 year)
{
 u_int32 days;
 days = ntpcal_days_in_years(year-1) - DAY_NTP_STARTS + 1;
 return days * SECSPERDAY;
}
