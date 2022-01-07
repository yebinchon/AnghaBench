
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int int16_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_int16 (int *,int *) ;

int16_t
fnvpair_value_int16(nvpair_t *nvp)
{
 int16_t rv;
 VERIFY0(nvpair_value_int16(nvp, &rv));
 return (rv);
}
