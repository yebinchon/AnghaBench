
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int nvpair_t ;


 int DATA_TYPE_UINT8 ;
 int nvpair_value_common (int *,int ,int *,int *) ;

int
nvpair_value_uint8(nvpair_t *nvp, uint8_t *val)
{
 return (nvpair_value_common(nvp, DATA_TYPE_UINT8, ((void*)0), val));
}
