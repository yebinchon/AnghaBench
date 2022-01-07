
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int nvpair_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_uint8 (int *,int *) ;

uint8_t
fnvpair_value_uint8_t(nvpair_t *nvp)
{
 uint8_t rv;
 VERIFY0(nvpair_value_uint8(nvp, &rv));
 return (rv);
}
