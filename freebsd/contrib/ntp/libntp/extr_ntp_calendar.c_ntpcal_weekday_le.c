
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int ntpcal_periodic_extend (int ,int ,int) ;

int32_t
ntpcal_weekday_le(
 int32_t rdn,
 int32_t dow
 )
{
 return ntpcal_periodic_extend(rdn, dow, -7);
}
