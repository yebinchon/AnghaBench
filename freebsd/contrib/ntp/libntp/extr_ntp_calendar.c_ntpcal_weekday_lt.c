
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ ntpcal_periodic_extend (scalar_t__,scalar_t__,int) ;

int32_t
ntpcal_weekday_lt(
 int32_t rdn,
 int32_t dow
 )
{
 return ntpcal_periodic_extend(rdn-1, dow, -7);
}
